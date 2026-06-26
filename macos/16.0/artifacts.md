# macOS 16.0 Artifact Index

## Summary

This is a placeholder index for macOS `16.0` release artifacts. No comparable reduced metadata has been acquired yet.

## Acquisition Status

- Runtime commands: not recorded.
- Kext personality inventory: not acquired.
- IORegistry inventory: not acquired.
- Release diff input: missing.

## Acquisition Manifest

- Fixture: `datasets/fixtures/acquisition-manifest/16.0.fixture.json`
- Schema: `datasets/schemas/release-acquisition-manifest.schema.json`
- Validation: `.venv/bin/python tools/schema-validate/validate-known-schemas.py`

## Not Yet Acquired

- installer metadata;
- IPSW metadata;
- kernel collection metadata;
- DriverKit metadata;
- reduced kext personality datasets.

## Rules

Follow `docs/guidelines/release-acquisition.md` before adding artifacts.
