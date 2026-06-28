#!/bin/sh
set -eu

root="${1:-.}"
status=0
paths="$(mktemp "${TMPDIR:-/tmp}/darwin-json-paths.XXXXXX")"
trap 'rm -f "$paths"' EXIT

find "$root" \
  \( -path './.git' -o -path './.venv' -o -path '*/__pycache__' \) -prune \
  -o -name '*.json' -type f -print \
  | sort > "$paths"

while IFS= read -r path; do
  if python3 -m json.tool "$path" >/dev/null; then
    printf 'ok %s\n' "$path"
  else
    printf 'fail %s\n' "$path" >&2
    status=1
  fi
done < "$paths"

exit "$status"
