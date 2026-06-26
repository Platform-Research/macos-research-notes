# Release Manifest Validation Examples

## Purpose

Use these commands before merging release acquisition manifest fixtures.

## Syntax Validation

Check one manifest:

```sh
python3 -m json.tool datasets/fixtures/acquisition-manifest/15.6.fixture.json >/dev/null
```

Check all repository JSON files:

```sh
tools/schema-validate/validate-json.sh
```

## Schema Validation

Use the optional schema validator when `.venv` has `jsonschema` installed:

```sh
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

This validates known fixture and schema pairs. It should be expanded when new acquisition manifests become part of the review baseline.

## Fixtures Covered

Current release acquisition manifest fixtures:

- `datasets/fixtures/acquisition-manifest/acquisition-manifest.fixture.json`
- `datasets/fixtures/acquisition-manifest/15.6.fixture.json`
- `datasets/fixtures/acquisition-manifest/16.0.fixture.json`

## Boundary Checks

Before adding release facts, confirm that:

- raw installer, IPSW, kernel collection, and IORegistry artifacts are not committed;
- any `derived` artifact points to a committed note or reduced dataset;
- any unavailable artifact is marked with `state: "missing"`;
- redaction policy is explicit for every artifact entry;
- release folders do not claim build numbers, driver behavior, or hardware support without artifact-backed evidence.

## Open Questions

- Whether 15.6 and 16.0 fixture files should be mandatory schema-validation pairs.
- Whether release manifest validation should become a pre-commit or CI gate.
- Which reduced artifact classes should be required before release-to-release diffing.
