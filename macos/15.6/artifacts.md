# macOS 15.6 Artifact Index

## Summary

This is a placeholder index for macOS `15.6` release artifacts. No comparable reduced metadata has been acquired yet.

## Acquisition Status

- Runtime commands: not recorded.
- Kext personality inventory: not acquired.
- Kext personality source candidate: documented in `macos/15.6/source-acquisition-log.md`.
- Local host source check: rejected for `15.6`; `sw_vers` reports `26.5.1` build `25F80`.
- Acquisition workspace: `downloads/` contains no `15.6` source artifact.
- IORegistry inventory: not acquired.
- Release diff input: missing.

## Acquisition Manifest

- Fixture: `datasets/fixtures/acquisition-manifest/15.6.fixture.json`
- Schema: `datasets/schemas/release-acquisition-manifest.schema.json`
- Validation: `.venv/bin/python tools/schema-validate/validate-known-schemas.py`

## Manifest Coverage

- Coverage README: `datasets/fixtures/acquisition-manifest/README.md`
- Current evidence state: release folder and artifact index are derived.
- Missing reduced inputs: kext personality source, kext personality inventory, IORegistry inventory, release diff input.
- Raw artifacts acquired: no.

## Candidate Source Order

1. User-provided `15.6` installer or mounted system volume with documented provenance.
2. Official Apple `15.6` installer source acquired into `downloads/` and reduced locally.
3. Local host already running `15.6`, using read-only extension paths and local runtime commands.

The third candidate is not satisfied by the current host, which reports macOS `26.5.1` build `25F80`.

## Provenance Template

Use this block when a reduced artifact is added. Until populated, it is not evidence of acquisition.

```text
Artifact:
Source path or command:
State: raw | reduced | derived | missing
Redaction policy:
Output path:
Validation:
```

## Not Yet Acquired

- installer metadata;
- IPSW metadata;
- kernel collection metadata;
- DriverKit metadata;
- reduced kext or DriverKit `Info.plist` personality source;
- reduced kext personality datasets.

## Rules

Follow `docs/guidelines/release-acquisition.md` before adding artifacts.
