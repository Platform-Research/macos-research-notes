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
