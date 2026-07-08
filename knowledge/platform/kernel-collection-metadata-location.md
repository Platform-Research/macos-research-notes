# Kernel Collection Metadata Location

## Summary

Kernel collections move some platform-relevant metadata away from loose kext bundles and into packaged boot-time artifacts. For this repo, that changes where metadata may be found, not the strength of the claim that metadata can support.

## Context

- Related kernel collection note: `knowledge/platform/kernel-collections.md`
- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related acquisition guide: `docs/guidelines/release-acquisition.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 209

## Observations

- `kext-personalities.md` records loose kext `Info.plist` personalities as a source of matching metadata.
- `kernel-collections.md` records kernel collections as platform-relevant boot artifacts.
- `docs/guidelines/release-acquisition.md` governs acquisition and prohibits committing raw payloads when reduced metadata is enough.

## Inferences

- Loose kext metadata is easier to inspect, but modern release evidence may require kernel collection metadata indexes.
- A kernel collection metadata record should cite artifact provenance and preserve only reduced fields needed for platform research.
- Moving metadata into a kernel collection does not prove a service matched or started; it only changes the artifact source.

## Unknowns

- The repo has no reduced extraction from a real kernel collection yet.
- The exact overlap between loose bundle metadata and collected metadata remains unresolved for target releases.

## Sources

- `knowledge/platform/kernel-collections.md`
- `knowledge/iokit/kext-personalities.md`
- `docs/guidelines/release-acquisition.md`
