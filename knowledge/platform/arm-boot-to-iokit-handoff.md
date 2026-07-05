# ARM Boot to IOKit Handoff

## Summary

For ARM bridge readiness, the boot-to-IOKit handoff is the boundary between platform startup prerequisites and driver matching research. The safe first question is not whether a target processor boots macOS. The safe question is which metadata must be understood before the kernel can publish services that IOKit personalities can match.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- Boot note: `knowledge/platform/boot-artifacts.md`
- Kernel collection note: `knowledge/platform/kernel-collections.md`
- Matching note: `knowledge/platform/matching-path.md`
- Registry note: `knowledge/iokit/IORegistry.md`
- Service note: `knowledge/iokit/IOService.md`
- Review guide: `docs/guidelines/platform-review-checklist.md`

## Layer Boundary

| Layer | Bring-Up Question | First Evidence | Stop Line |
| --- | --- | --- | --- |
| Boot artifact | Which release-owned boot materials exist and how were they acquired? | Artifact index and provenance note | No raw boot payload in git. |
| Kernel collection | Which platform-facing metadata can be indexed without binary interpretation? | Reduced collection or personality metadata | No patching or disassembly claim. |
| Platform identity | Which platform identity surfaces are visible without raw dumps? | Plane, class, depth, source command | No raw DeviceTree property dump. |
| Service publication | Which `IOService` classes can appear as matching surfaces? | Reduced topology and IOKit notes | No claim that a target CPU published them. |
| Driver matching | Which personalities expect those providers or names? | Reduced `IOKitPersonalities` records | No runtime attachment claim. |

## Observations

- `boot-artifacts.md` requires boot artifact work to start as metadata indexing and to avoid boot modification or viability claims.
- `kernel-collections.md` requires first-pass kernel collection work to use reduced metadata and provenance rather than raw payload interpretation.
- `IOService.md` records that provider publication starts matching and probing.
- `matching-path.md` treats provider publication, personality metadata, candidate joins, and runtime attachment as separate evidence layers.
- `platform-review-checklist.md` blocks boot viability, patching, hardware enablement, and runtime attachment claims without bounded evidence.

## Inferences

- ARM bridge-readiness research should treat the boot-to-IOKit handoff as a dependency chain: boot metadata first, collection metadata second, platform identity third, matching metadata fourth.
- A missing reduced boot or collection artifact should stop interpretation rather than invite speculation about processor support.
- IOKit matching remains relevant before runtime experiments because it exposes what macOS expects once platform services exist.
- The first useful release-backed output is probably reduced platform-facing personality metadata, because it bridges kernel collections and IOKit matching without committing raw payloads.

## Research Use

Use this note before starting ARM-oriented work:

1. Name the handoff layer being studied.
2. Record whether the artifact is missing, raw, reduced, or derived.
3. Keep claims at the lowest supported layer.
4. Link any matching conclusion back to source provenance.
5. Stop before patching, boot modification, or processor-specific enablement claims.

## Unknowns

- The repository does not yet contain reduced boot artifact indexes.
- The repository does not yet contain reduced kernel collection indexes.
- No release-backed observation currently follows one ARM platform from boot metadata to service publication.
- The minimum safe DeviceTree identity record is still undecided.

## Sources

- `knowledge/platform/arm-macos-bringup-research.md`
- `knowledge/platform/boot-artifacts.md`
- `knowledge/platform/kernel-collections.md`
- `knowledge/platform/matching-path.md`
- `knowledge/iokit/IOService.md`
- `knowledge/iokit/IORegistry.md`
- `docs/guidelines/platform-review-checklist.md`
