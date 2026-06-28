# Acquisition Manifest Fixture

## Summary

This fixture demonstrates release acquisition manifest shape without committing raw artifacts.

## Schema

- `datasets/schemas/release-acquisition-manifest.schema.json`

## Fixtures

- `datasets/fixtures/acquisition-manifest/acquisition-manifest.fixture.json`
- `datasets/fixtures/acquisition-manifest/15.6.fixture.json`
- `datasets/fixtures/acquisition-manifest/16.0.fixture.json`

## Validation

```sh
python3 -m json.tool datasets/fixtures/acquisition-manifest/acquisition-manifest.fixture.json >/dev/null
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

## Release Diff Readiness

Acquisition manifests describe what is present, derived, reduced, raw, or missing. They do not by themselves mean a release pair is ready for comparison.

Before creating or publishing a release diff, use:

- `docs/guidelines/release-diff-input-readiness.md`
- `datasets/schemas/release-diff.schema.json`

If comparable reduced artifacts are missing, represent the comparison as `unresolved` rather than inferring a release difference.

## Boundaries

- Does not acquire installer payloads.
- Does not include raw IORegistry output.
- Includes a `missing` artifact state as an explicit placeholder.
- Does not imply that all release artifacts have been acquired.
- Does not imply release diff readiness.
