#!/bin/sh
set -eu

usage() {
  cat <<'USAGE'
Usage: ioreg-inventory.sh <command> [args]

Commands:
  topology [depth]          Print IOService topology without properties.
  topology-json [depth] [limit]
                             Emit topology nodes as schema-shaped JSON.
  pci-count                 Count root IOPCIDevice matches.
  pci-allowlist             Print selected IOPCIDevice allowlist fields.
  pci-decode-field <kind> <blob>
                             Decode one PCI IORegistry hex blob.
  pci-decode-smoke           Run known PCI decode smoke checks.
  pci-sample-json            Emit a reduced normalized PCI sample record.
  user-client-key-counts    Count IOUserClient property keys without values.
  user-client-key-counts-json
                             Emit user-client key counts as schema-shaped JSON.
  user-client-flags         Print selected IOUserClient boolean flags only.

This helper is read-only. It intentionally avoids raw broad ioreg dumps.
USAGE
}

command="${1:-help}"
repo_root="$(CDPATH= cd -- "$(dirname -- "$0")/../.." && pwd)"
pci_decoder="$repo_root/tools/pci-id-decode/pci_id_decode.py"

case "$command" in
  help|-h|--help)
    usage
    ;;
  topology)
    depth="${2:-2}"
    ioreg -p IOService -d "$depth" -w 0
    ;;
  topology-json)
    depth="${2:-2}"
    limit="${3:-100}"
    topology_tmp="$(mktemp "${TMPDIR:-/tmp}/darwin-ioreg-topology.XXXXXX")"
    trap 'rm -f "$topology_tmp"' EXIT
    ioreg -p IOService -d "$depth" -w 0 > "$topology_tmp"
    python3 - "$depth" "$limit" "$topology_tmp" <<'PY'
import json
import re
import sys

depth = int(sys.argv[1])
limit = int(sys.argv[2])
path = sys.argv[3]
records = []
pattern = re.compile(r"^(?P<indent>\s*)\+-o (?P<name>.*?)\s+<class (?P<class>[^,>]+)")

with open(path, "r", encoding="utf-8", errors="replace") as handle:
    for line in handle:
        match = pattern.match(line)
        if not match:
            continue
        item_depth = len(match.group("indent")) // 2
        records.append({
            "record_kind": "topology_node",
            "object_name": match.group("name"),
            "class_name": match.group("class"),
            "plane": "IOService",
            "depth": item_depth,
        })
        if len(records) >= limit:
            break

print(json.dumps({
    "schema_version": "0.1.0",
    "source": {
        "tool": "tools/ioreg-inventory/ioreg-inventory.sh",
        "command": "topology-json",
        "mode": "topology",
        "plane": "IOService",
        "redaction": {
            "raw_output_committed": False,
            "policy": "topology-only",
            "omitted_fields": ["all properties", "hex blobs", "process data"],
        },
    },
    "records": records,
    "notes": [
        f"Depth limit: {depth}",
        f"Record limit: {limit}",
    ],
}, indent=2))
PY
    ;;
  pci-count)
    ioreg -p IOService -c IOPCIDevice -r -d 1 -w 0 | grep -c '^\+-o' || true
    ;;
  pci-allowlist)
    ioreg -p IOService -c IOPCIDevice -r -l -w 0 \
      | grep -E '"(IOName|vendor-id|device-id|class-code|revision-id|subsystem-id|subsystem-vendor-id|compatible|device_type|IOPCIMSIMode)" ='
    ;;
  pci-decode-field)
    if [ "$#" -ne 3 ]; then
      echo "error: expected kind and blob" >&2
      exit 2
    fi
    "$pci_decoder" "$2" "$3"
    ;;
  pci-decode-smoke)
    "$pci_decoder" vendor-id '<e4140000>'
    "$pci_decoder" device-id '<34440000>'
    "$pci_decoder" class-code '<00040600>'
    ;;
  pci-sample-json)
    vendor="$("$pci_decoder" vendor-id '<e4140000>')"
    device="$("$pci_decoder" device-id '<34440000>')"
    class_code="$("$pci_decoder" class-code '<00800200>')"
    revision="$("$pci_decoder" revision-id '<04000000>')"
    cat <<JSON
{
  "schema_version": "0.1.0",
  "source": {
    "tool": "tools/ioreg-inventory/ioreg-inventory.sh",
    "command": "pci-sample-json",
    "mode": "pci-allowlist",
    "plane": "IOService",
    "redaction": {
      "raw_output_committed": false,
      "policy": "allowlist-only",
      "omitted_fields": ["IODeviceMemory", "IOInterruptSpecifiers", "IOPowerManagement"]
    }
  },
  "records": [
    {
      "record_kind": "pci_device",
      "object_name": "pci14e4,4434",
      "class_name": "IOPCIDevice",
      "plane": "IOService",
      "fields": {
        "IOName": "pci14e4,4434",
        "vendor-id": "e4140000",
        "device-id": "34440000",
        "class-code": "00800200",
        "revision-id": "04000000",
        "subsystem-vendor-id": "6b100000",
        "subsystem-id": "88430000",
        "device_type": "pcie-device",
        "compatible": ["wlan-pcie,bcm4387", "wlan-pcie,bcm"],
        "IOPCIMSIMode": true
      },
      "normalized": {
        "vendor-id": "$vendor",
        "device-id": "$device",
        "class-code": "$class_code",
        "revision-id": "$revision"
      }
    }
  ],
  "notes": [
    "Reduced sample record for decoder and schema smoke checks; not a full host inventory."
  ]
}
JSON
    ;;
  user-client-key-counts)
    ioreg -p IOService -c IOUserClient -r -l -w 0 \
      | sed -n 's/.*"\([A-Za-z0-9,#_-][A-Za-z0-9,#_-]*\)" =.*/\1/p' \
      | sort \
      | uniq -c \
      | sort -nr
    ;;
  user-client-key-counts-json)
    ioreg -p IOService -c IOUserClient -r -l -w 0 \
      | sed -n 's/.*"\([A-Za-z0-9,#_-][A-Za-z0-9,#_-]*\)" =.*/\1/p' \
      | sort \
      | uniq -c \
      | sort -nr \
      | awk '
        BEGIN {
          print "{"
          print "  \"schema_version\": \"0.1.0\","
          print "  \"source\": {"
          print "    \"tool\": \"tools/ioreg-inventory/ioreg-inventory.sh\","
          print "    \"command\": \"user-client-key-counts-json\","
          print "    \"mode\": \"user-client-key-counts\","
          print "    \"plane\": \"IOService\","
          print "    \"redaction\": {"
          print "      \"raw_output_committed\": false,"
          print "      \"policy\": \"values-stripped\","
          print "      \"omitted_fields\": [\"IOUserClientCreator\"]"
          print "    }"
          print "  },"
          print "  \"records\": ["
        }
        {
          if (seen) {
            print ","
          }
          seen = 1
          printf "    {\"record_kind\": \"user_client_key_count\", \"key\": \"%s\", \"count\": %d}", $2, $1
        }
        END {
          if (seen) {
            print ""
          }
          print "  ]"
          print "}"
        }'
    ;;
  user-client-flags)
    ioreg -p IOService -c IOUserClient -r -l -w 0 -d 1 \
      | grep -E '"(IOUserClientDefaultLocking|IOUserClientDefaultLockingSetProperties|IOUserClientDefaultLockingSingleThreadExternalMethod|IOUserClientCrossEndianCompatible)" = (Yes|No)'
    ;;
  *)
    usage >&2
    exit 2
    ;;
esac
