# ARM Question Map

## Summary

ARM bridge readiness needs a question map so sessions do not drift into generic platform research. Each question should identify one macOS/kernel layer, one artifact class, one bridge-relevant use, and one stop condition.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- Artifact checklist: `knowledge/platform/arm-artifact-checklist.md`
- Handoff note: `knowledge/platform/arm-boot-to-iokit-handoff.md`
- Identity note: `knowledge/platform/arm-platform-identity-boundaries.md`
- Controller note: `knowledge/platform/arm-controller-prerequisites.md`
- Evidence ladder: `knowledge/platform/arm-release-evidence-ladder.md`

## Core Questions

| Layer | Question | Useful Output | Stop Condition |
| --- | --- | --- | --- |
| Release source | Which release artifact can provide reduced metadata legally and reproducibly? | Acquisition note or manifest update | Provenance unclear. |
| Boot handoff | What can be named about boot prerequisites without raw payloads? | Boot metadata index or public-reference note | Would require patching or boot modification. |
| Kernel collections | Which platform-facing metadata is visible before binary analysis? | Reduced collection index | Requires raw binary interpretation. |
| Platform identity | Which DeviceTree or registry topology fields are safe? | Topology-only note or fixture | Requires raw properties. |
| IOKit matching | Which providers and personalities define expected services? | Reduced personality dataset or note | Source artifact missing. |
| Controller families | Which buses or controllers must be mapped before endpoint claims? | Family prerequisite note | Would imply support quality. |
| Bridge design readiness | Which macOS layer would a future bridge need to translate, emulate, expose, compare, or ignore? | Bridge-readiness matrix note | The layer is not understood from artifacts. |
| Release comparison | What changed in equivalent reduced metadata? | Release diff with unresolved states preserved | One side lacks comparable metadata. |
| Target experiment | What exact target, release, artifact, and result are being recorded? | Bounded experiment note | The result would be generalized beyond the target. |

## Session Rule

Before starting a session, choose exactly one row from the map. If a session needs two rows, split it unless the first row directly produces evidence for the second.

## Observations

- `NEXT.md` pauses release-diff work until a verified `15.6` source exists.
- `arm-boot-to-iokit-handoff.md` treats boot, collection, platform identity, service publication, and driver matching as separate layers.
- `arm-platform-identity-boundaries.md` separates DeviceTree, topology, provider class, name match, and family-specific keys.
- `arm-controller-prerequisites.md` prioritizes platform identity, interrupts/timers, power management, PCIe, USB, storage, display, and networking.

## Inferences

- The next useful ARM-focused session should either improve acquisition readiness, sharpen one prerequisite layer, or explain how one macOS layer would feed a future bridge design.
- A broad note is only useful if it helps choose a narrower artifact-backed session.
- Missing evidence is still useful when recorded as a stop condition, because it prevents false progress.

## Sources

- `planning/NEXT.md`
- `knowledge/platform/arm-macos-bringup-research.md`
- `knowledge/platform/arm-artifact-checklist.md`
- `knowledge/platform/arm-boot-to-iokit-handoff.md`
- `knowledge/platform/arm-platform-identity-boundaries.md`
- `knowledge/platform/arm-controller-prerequisites.md`
- `knowledge/platform/arm-release-evidence-ladder.md`
