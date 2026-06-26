#!/bin/sh
set -eu

usage() {
  cat <<'USAGE'
Usage: ioreg-inventory.sh <command> [args]

Commands:
  topology [depth]          Print IOService topology without properties.
  pci-count                 Count root IOPCIDevice matches.
  pci-allowlist             Print selected IOPCIDevice allowlist fields.
  pci-decode-field <kind> <blob>
                             Decode one PCI IORegistry hex blob.
  pci-decode-smoke           Run known PCI decode smoke checks.
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
