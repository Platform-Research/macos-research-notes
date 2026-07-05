# dyld and Framework Source Needed

## Summary

dyld, frameworks, and the dyld shared cache matter to a future bridge because user-space code ultimately consumes kernel and platform services through libraries and frameworks. The repository currently treats this as source-needed and metadata-needed work.

## Context

- Userland boundary map: `knowledge/platform/userland-boundary-map.md`
- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- Roadmap: `planning/ROADMAP.md`
- Artifact checklist: `knowledge/platform/arm-artifact-checklist.md`
- Release acquisition guide: `docs/guidelines/release-acquisition.md`

## Why This Matters

A future bridge may need to know:

- which frameworks expose IOKit, driver, hardware, or platform services to user space;
- which dyld shared cache metadata can be compared across releases;
- which symbols or dependencies imply platform-facing expectations;
- where userland assumptions begin after kernel services are available;
- which userland facts are release-backed versus local-runtime.

## Safe First Questions

- Which dyld shared cache metadata can be indexed without committing raw cache payloads?
- Which framework inventories are small, reduced, and reproducible?
- Which frameworks should be studied first for IOKit and platform service boundaries?
- Which symbols or dependencies require a schema before comparison?
- Which release folders already record missing dyld/framework artifacts?

## Current Evidence

- `ROADMAP.md` names frameworks, dyld shared cache metadata, symbol data, and dependency graphs as future artifact-workflow targets.
- `userland-boundary-map.md` records dyld and frameworks as source-needed.
- `release-acquisition.md` blocks large raw downloads and binary payloads while allowing reduced metadata and scripts that regenerate it.
- `arm-artifact-checklist.md` ranks release provenance and reduced metadata as the first safe artifact classes.

## Stop Lines

Stop before:

- committing raw dyld shared cache payloads;
- publishing symbol claims without release provenance;
- treating userland framework presence as proof of kernel service behavior;
- mixing dyld analysis with bridge implementation guidance.

## Unknowns

- No dyld shared cache metadata index exists.
- No framework inventory schema exists.
- No first framework target is selected.
- No release-backed userland comparison exists.

## Sources

- `knowledge/platform/userland-boundary-map.md`
- `knowledge/platform/macos-kernel-layer-map.md`
- `planning/ROADMAP.md`
- `knowledge/platform/arm-artifact-checklist.md`
- `docs/guidelines/release-acquisition.md`
