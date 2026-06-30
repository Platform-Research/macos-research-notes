# macOS 15.6 Metadata Stub

## Summary

This folder is reserved for reduced macOS `15.6` metadata. No release-specific artifacts have been acquired yet.

## Current Status

- Runtime facts: not recorded.
- Artifact index: `macos/15.6/artifacts.md`.
- Source acquisition log: `macos/15.6/source-acquisition-log.md`.
- Reduced datasets: not created.
- Raw artifacts: not committed.

## Manifest Coverage

- Acquisition manifest fixture: `datasets/fixtures/acquisition-manifest/15.6.fixture.json`
- Coverage state: release folder and artifact index are derived; comparable reduced artifacts are missing.
- Raw artifacts acquired: no.

## Readiness Links

- Artifact index: `macos/15.6/artifacts.md`
- Source acquisition log: `macos/15.6/source-acquisition-log.md`
- Acquisition checklist: `docs/guidelines/acquisition-checklist.md`
- Release diff readiness: `docs/guidelines/release-diff-input-readiness.md`

This release is not comparison-ready until comparable reduced artifacts exist or gaps are represented as `unresolved`.

## Before Adding Data

- Follow `docs/guidelines/release-acquisition.md`.
- Use `docs/guidelines/release-provenance-template.md`.
- Run `docs/guidelines/acquisition-checklist.md`.

## Boundaries

This stub does not claim any macOS `15.6` behavior, build number, kernel version, or driver metadata.

## Current Acquisition Decision

The next useful source target is reduced kext or DriverKit `Info.plist` personality metadata derived from a legal `15.6` source. Raw installers, IPSWs, full plist dumps, and binary payloads remain out of scope for committed files.
