# Provider Discovery vs Startup

## Summary

Provider discovery is the point where an `IOService` object becomes available for matching. Driver startup is later: it depends on personality selection, probing, attachment, and a successful `start()` call. Platform research should keep these stages separate so a provider, personality, or candidate join is not mistaken for a running driver.

## Context

- Related IOKit note: `knowledge/iokit/IOService.md`
- Related registry note: `knowledge/iokit/IORegistry.md`
- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related platform note: `knowledge/platform/matching-path.md`
- Related review guide: `docs/guidelines/platform-review-checklist.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 201

## Stage Model

| Stage | Evidence | What It Means | What It Does Not Prove |
| --- | --- | --- | --- |
| Service exists internally | `IOService` object, class metadata | A kernel-side service object can represent a driver, provider, family, or device-like service. | It is visible for matching. |
| Provider publication | `registerService()` behavior described in `IOService.md` | A service is registered and matching/probing can begin against it. | A specific client driver was selected. |
| Personality candidate | `IOKitPersonalities` metadata | A bundle declares matching criteria such as `IOClass`, `IOProviderClass`, match keys, probe score, or match category. | The personality matched a live provider. |
| Probe phase | `probe()` lifecycle evidence | A candidate can accept, reject, or adjust its score for a provider. | The driver started successfully. |
| Attachment | registry provider/client relationship | A client/provider relationship can appear in the Service plane. | The relationship is release-wide or stable across hosts. |
| Startup | `start()` lifecycle evidence | A selected service instance began its runtime role on a provider. | Behavior, performance, hardware enablement, or support quality. |

## Observations

- `IOService.md` records that `registerService()` starts registration for a newly discovered service and that matching/probing begin when a provider is published.
- `IOService.md` records lifecycle methods including `probe()`, `start()`, `attach()`, `detach()`, `stop()`, `terminate()`, and `finalize()`.
- `IOService.md` records that `start()` is called when an instance has been selected to run on a provider.
- `IORegistry.md` records that the I/O Registry is the live in-memory graph of active IOKit objects and provider/client relationships across planes.
- `kext-personalities.md` records that personality dictionaries define matching inputs such as `IOClass`, `IOProviderClass`, `IONameMatch`, `IOProbeScore`, `IOMatchCategory`, and family-specific keys.
- `matching-path.md` separates provider publication, personality metadata, parsed family keys, candidate joins, and runtime attachment as distinct evidence layers.

## Inferences

- A provider being published is best treated as an opportunity for matching, not as evidence that a particular driver started.
- A personality record is an intent and constraint document: it says what a bundle can try to match, not what happened on a host.
- A candidate join between topology and `IOProviderClass` is useful platform knowledge because it narrows plausible relationships, but it still sits before probe, attachment, and startup evidence.
- Runtime startup evidence needs a stronger artifact class than reduced metadata: a safe registry observation, log, trace, or other bounded runtime record.

## Research Use

Use this distinction when reading platform-facing metadata:

1. Ask whether the evidence describes a provider, a personality, a candidate relationship, an attachment, or a successful startup.
2. Keep the strongest claim no stronger than the weakest evidence layer.
3. Use candidate joins to guide follow-up research, not to assert support or behavior.
4. Require release-backed artifacts before comparing startup or support behavior across macOS versions.

## Unknowns

- This note does not identify a concrete provider-to-driver startup example from a release-backed artifact.
- The exact runtime sequence from one published provider to a successful `start()` still needs a small, redacted, host-labeled observation.
- DriverKit services may expose a similar conceptual split, but their user-space placement needs separate treatment.

## Sources

- `knowledge/iokit/IOService.md`
- `knowledge/iokit/IORegistry.md`
- `knowledge/iokit/kext-personalities.md`
- `knowledge/platform/matching-path.md`
- `docs/guidelines/platform-review-checklist.md`
