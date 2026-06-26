# Parsed PCI Match Fixtures

## Summary

This directory contains a reduced personality JSON fixture with parsed PCI match tokens. It demonstrates output produced after integrating `tools/pci-match-parse/` into `tools/kext-personality-inventory/`.

## Fixture

- `parsed-pci-matches.fixture.json`

## Regeneration Command

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh personalities-json /System/Library/Extensions/IONVMeFamily.kext/Contents/Info.plist
```

## Local Syntax Check

```sh
python3 -m json.tool datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json >/dev/null
```

## Rules Demonstrated

- PCI match strings are parsed into value and optional mask tokens.
- Parsed tokens do not prove hardware match.
- Raw plist output is not committed.

## Next Work

- Optional dependency lock strategy.
- macOS 26.5.1 local runtime note.
- Release acquisition rules.
