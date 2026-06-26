# Helper Output Fixtures

## Summary

This directory stores reduced safe fixtures shaped like output from the project helper tools. The fixtures are small enough to review, contain redaction metadata, and avoid raw registry or plist dumps.

## Fixtures

- `ioreg-user-client-key-counts.fixture.json`
- `kext-personalities.fixture.json`

## Regeneration Commands

Generate IORegistry user-client key counts:

```sh
tools/ioreg-inventory/ioreg-inventory.sh user-client-key-counts-json
```

Generate kext personality records:

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh personalities-json /System/Library/Extensions/IOHIDFamily.kext/Contents/Info.plist
```

## Redaction Checks

- `IOUserClientCreator` values are not present; only the key count is retained.
- Raw plist dumps are not present.
- Large binary blobs are not present.
- Entitlement values are not present.
- Fixture counts are host-specific and should not be used as release facts.

## Local Syntax Checks

```sh
python3 -m json.tool datasets/fixtures/helper-outputs/ioreg-user-client-key-counts.fixture.json >/dev/null
python3 -m json.tool datasets/fixtures/helper-outputs/kext-personalities.fixture.json >/dev/null
```

## Next Work

- Candidate join fixture.
- PCI decoder integration into IORegistry helper.
- Schema validation script.
