# ARM Bridge Readiness Matrix

## Summary

This matrix records how macOS knowledge should be organized for a future bridge between macOS/kernel layers and an ARM environment. It does not design the bridge yet. It classifies each layer by the kind of future bridge decision it may require: translate, emulate, expose, compare, or ignore.

## Context

- Bridge focus: `knowledge/platform/arm-bridge-readiness.md`
- Campaign plan: `planning/ARM_BRIDGE_READINESS.md`
- Question map: `knowledge/platform/arm-question-map.md`
- Artifact checklist: `knowledge/platform/arm-artifact-checklist.md`
- Evidence ladder: `knowledge/platform/arm-release-evidence-ladder.md`

## Decision Verbs

| Verb | Meaning |
| --- | --- |
| Translate | Convert one identity, metadata, or expectation shape into another representation. |
| Emulate | Provide behavior or structure expected by macOS when native hardware or firmware is absent. |
| Expose | Make a real platform fact visible in the shape macOS expects. |
| Compare | Determine whether two releases, hosts, or targets differ in relevant metadata. |
| Ignore | Prove that a layer is not needed for the current bridge question. |

## Matrix

| macOS Layer | Future Bridge Question | Likely Verb | Evidence Needed First |
| --- | --- | --- | --- |
| Release provenance | Which macOS release and artifact owns the fact? | Compare | Acquisition manifest and artifact index. |
| Boot metadata | What must exist before kernel-layer reasoning starts? | Expose or emulate | Boot artifact metadata index. |
| Kernel collection metadata | Where do platform-facing services and personalities appear? | Compare | Reduced collection or personality metadata. |
| DeviceTree context | Which platform identity hierarchy must be preserved or represented? | Translate or expose | Topology-only DeviceTree plan or fixture. |
| IORegistry topology | Which service graph shape does macOS observe? | Translate, expose, or compare | Reduced plane/class/depth/ancestor records. |
| IOKit provider classes | Which provider surfaces must exist for matching? | Expose or emulate | Reduced personality records and provider notes. |
| Personality match keys | Which metadata constrains matching? | Translate or compare | `IOProviderClass`, `IONameMatch`, probe, category, family keys. |
| PCIe metadata | Which bus identities and class codes matter? | Translate or expose | PCI match tokens and normalized registry identity. |
| USB metadata | Which controller and device expectations matter? | Translate or expose | USB personality/provider examples. |
| Storage metadata | Which boot or data path expectations matter? | Expose or emulate | NVMe/storage provider and personality metadata. |
| Interrupt/timer assumptions | Which event and time sources must be represented? | Emulate or expose | Public references or source-needed notes. |
| Power management | Which state expectations must be omitted, summarized, or represented? | Emulate, expose, or ignore | Redaction-first power note. |
| Display metadata | Which display-facing expectations exist without support claims? | Compare | Reduced personality metadata. |
| Networking metadata | Which network-facing provider expectations exist? | Compare or expose | PCI/USB/network personality metadata. |
| User clients | Which user-space connection surfaces are platform-adjacent? | Ignore or expose | User-client metadata boundary note. |

## Observations

- `arm-bridge-readiness.md` defines bridge readiness as organized knowledge for a future design, not implementation.
- `arm-question-map.md` now includes bridge design readiness as a first-class question layer.
- `arm-artifact-checklist.md` orders artifact classes from release provenance through target experiment records.
- `arm-release-evidence-ladder.md` prevents bridge decisions from outrunning their evidence level.

## Inferences

- DeviceTree, IORegistry topology, and IOKit provider classes are the first likely translation/exposure surfaces.
- Interrupt, timer, and power-management work should stay source-needed until public references or reduced artifacts exist.
- User-client metadata is platform-adjacent, but it should not drive early bridge design unless a concrete user-space service question requires it.
- A future bridge design should be decomposed by layer rather than treated as one monolithic implementation.

## Unknowns

- No bridge target has been named.
- No layer has enough evidence yet to produce implementation guidance.
- The project does not yet have reduced DeviceTree, boot metadata, or kernel collection indexes.
- The matrix has not been validated against a concrete target scenario.

## Sources

- `knowledge/platform/arm-bridge-readiness.md`
- `planning/ARM_BRIDGE_READINESS.md`
- `knowledge/platform/arm-question-map.md`
- `knowledge/platform/arm-artifact-checklist.md`
- `knowledge/platform/arm-release-evidence-ladder.md`
