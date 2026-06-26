# Acquisition Manifest Fixture

## Summary

This fixture demonstrates release acquisition manifest shape without committing raw artifacts.

## Schema

- `datasets/schemas/release-acquisition-manifest.schema.json`

## Validation

```sh
python3 -m json.tool datasets/fixtures/acquisition-manifest/acquisition-manifest.fixture.json >/dev/null
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

## Boundaries

- Does not acquire installer payloads.
- Does not include raw IORegistry output.
- Includes a `missing` artifact state as an explicit placeholder.
- Does not imply that all release artifacts have been acquired.
