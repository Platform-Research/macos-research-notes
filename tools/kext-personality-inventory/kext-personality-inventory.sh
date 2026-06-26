#!/bin/sh
set -eu

roots="/System/Library/Extensions /Library/Extensions /System/Library/DriverExtensions /Library/DriverExtensions"

usage() {
  cat <<'USAGE'
Usage: kext-personality-inventory.sh <command> [args]

Commands:
  plist-count                 Count local extension Info.plist files.
  plist-sample [limit]        List a bounded sample of extension Info.plist files.
  bundle-summary <plist>      Print selected bundle metadata.
  matching-keys <plist>       Print selected IOKit personality allowlist keys.
  personalities-json <plist>  Emit personality records as schema-shaped JSON.
  key-counts <plist>          Count plist keys without preserving values.

This helper is read-only. It intentionally avoids full plist dumps.
USAGE
}

find_plists() {
  # shellcheck disable=SC2086
  find $roots -name Info.plist -type f 2>/dev/null
}

require_plist() {
  if [ "$#" -lt 1 ] || [ ! -f "$1" ]; then
    echo "error: expected an Info.plist path" >&2
    exit 2
  fi
}

command="${1:-help}"

case "$command" in
  help|-h|--help)
    usage
    ;;
  plist-count)
    find_plists | wc -l
    ;;
  plist-sample)
    limit="${2:-20}"
    find_plists | head -n "$limit"
    ;;
  bundle-summary)
    plist="${2:-}"
    require_plist "$plist"
    for key in CFBundleIdentifier CFBundleExecutable CFBundlePackageType OSBundleRequired; do
      value="$(/usr/libexec/PlistBuddy -c "Print :$key" "$plist" 2>/dev/null || true)"
      if [ -n "$value" ]; then
        printf '%s=%s\n' "$key" "$value"
      fi
    done
    ;;
  matching-keys)
    plist="${2:-}"
    require_plist "$plist"
    plutil -p "$plist" \
      | grep -E '"(IOKitPersonalities|IOClass|IOProviderClass|IONameMatch|IOMatchCategory|IOProbeScore|IOUserClientClass|IOUserClientProperties|IOPCIMatch|IOPCIPrimaryMatch|IOPCISecondaryMatch|IOPCIClassMatch|idVendor|idProduct)" =>'
    ;;
  personalities-json)
    plist="${2:-}"
    require_plist "$plist"
    python3 - "$plist" <<'PY'
import json
import plistlib
import sys

plist_path = sys.argv[1]
with open(plist_path, "rb") as handle:
    data = plistlib.load(handle)

bundle = {
    "identifier": data.get("CFBundleIdentifier", ""),
    "executable": data.get("CFBundleExecutable"),
    "package_type": data.get("CFBundlePackageType"),
    "os_bundle_required": data.get("OSBundleRequired"),
}
if plist_path.endswith(".dext/Contents/Info.plist"):
    bundle["bundle_type"] = "dext"
elif plist_path.endswith(".kext/Contents/Info.plist"):
    bundle["bundle_type"] = "kext"
elif ".plugin/" in plist_path:
    bundle["bundle_type"] = "plugin"
elif ".bundle/" in plist_path:
    bundle["bundle_type"] = "bundle"
else:
    bundle["bundle_type"] = "unknown"
bundle = {key: value for key, value in bundle.items() if value not in (None, "")}

matching_keys = [
    "IOClass",
    "IOProviderClass",
    "IONameMatch",
    "IOMatchCategory",
    "IOProbeScore",
    "IOPCIMatch",
    "IOPCIPrimaryMatch",
    "IOPCISecondaryMatch",
    "IOPCIClassMatch",
    "idVendor",
    "idProduct",
]

records = []
for name, personality in sorted(data.get("IOKitPersonalities", {}).items()):
    if not isinstance(personality, dict):
        continue
    matching = {
        key: personality[key]
        for key in matching_keys
        if key in personality and isinstance(personality[key], (str, int, list))
    }
    record = {
        "record_kind": "kext_personality",
        "source_path": plist_path,
        "bundle": bundle,
        "personality_name": name,
        "matching": matching,
    }
    if "IOUserClientClass" in personality or "IOUserClientProperties" in personality:
        user_client = {}
        if isinstance(personality.get("IOUserClientClass"), str):
            user_client["IOUserClientClass"] = personality["IOUserClientClass"]
        if "IOUserClientProperties" in personality:
            user_client["IOUserClientProperties"] = {}
            user_client["redacted"] = True
        record["user_client"] = user_client
    records.append(record)

output = {
    "schema_version": "0.1.0",
    "source": {
        "tool": "tools/kext-personality-inventory/kext-personality-inventory.sh",
        "command": "personalities-json",
        "redaction": {
            "raw_output_committed": False,
            "policy": "allowlist-only",
            "omitted_fields": [
                "entitlements",
                "large binary blobs",
                "unmodeled family-specific dictionaries"
            ],
        },
    },
    "records": records,
}
print(json.dumps(output, indent=2, sort_keys=True))
PY
    ;;
  key-counts)
    plist="${2:-}"
    require_plist "$plist"
    plutil -p "$plist" \
      | sed -n 's/.*"\([A-Za-z0-9,#_-][A-Za-z0-9,#_-]*\)" =>.*/\1/p' \
      | sort \
      | uniq -c \
      | sort -nr
    ;;
  *)
    usage >&2
    exit 2
    ;;
esac
