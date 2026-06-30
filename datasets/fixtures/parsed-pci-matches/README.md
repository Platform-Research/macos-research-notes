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
- Fixture records demonstrate shape only and are not macOS `15.6` release evidence.

## Next Work

- Use the same parsed-token shape for a verified `15.6` reduced personality dataset when a source artifact exists.
- Keep registry matching and release-diff interpretation out of parser fixtures.
