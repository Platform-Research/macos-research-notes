# Controller Family Identity

## Summary

Controller family identity is a metadata grouping, not a support conclusion. Multiple personalities can point toward the same controller family through bundle names, provider classes, driver classes, family-specific match keys, or repeated domain terms, but those signals need release provenance before they become comparison evidence.

## Context

- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related backlog: `knowledge/platform/controller-family-backlog.md`
- Related fixture: `datasets/fixtures/helper-outputs/kext-personalities.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 205

## Observations

- `kext-personalities.md` records that personality dictionaries can include `IOClass`, `IOProviderClass`, `IONameMatch`, `IOMatchCategory`, `IOProbeScore`, `CFBundleIdentifier`, `IOUserClientClass`, and family-specific keys.
- `controller-family-backlog.md` records controller families as a platform-facing backlog rather than as completed support claims.
- The helper personality fixture is reduced metadata and does not prove runtime attachment.

## Inferences

- A controller family can be identified tentatively when several personalities share provider class, bundle domain, driver-class naming, or family-specific match keys.
- Family grouping should preserve the source field that created the grouping, such as bundle ID, provider class, or PCI match key.
- Controller family identity is useful for prioritizing research, but it does not describe behavior, performance, or target-machine support.

## Unknowns

- The repo does not yet define a normalized controller-family field in a schema.
- Some controller names may describe buses, endpoints, or software services depending on context.

## Sources

- `knowledge/iokit/kext-personalities.md`
- `knowledge/platform/controller-family-backlog.md`
- `datasets/fixtures/helper-outputs/kext-personalities.fixture.json`
