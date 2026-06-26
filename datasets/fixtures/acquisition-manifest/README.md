# Acquisition Manifest Fixture

## Summary

This fixture demonstrates release acquisition manifest shape without committing raw artifacts.

## Validation

```sh
python3 -m json.tool datasets/fixtures/acquisition-manifest/acquisition-manifest.fixture.json >/dev/null
```

## Boundaries

- Does not acquire installer payloads.
- Does not include raw IORegistry output.
- Includes a `missing` artifact state as an explicit placeholder.
