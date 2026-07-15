# ARM Bridge Readiness Campaign

Use this plan to keep the future macOS/kernel-to-ARM bridge objective focused, evidence-backed, and incremental.

## Objective

Build a deep map of how macOS, the Darwin kernel, IOKit, platform metadata, release artifacts, and controller dependencies work so a future bridge between macOS/kernel layers and an ARM environment can be designed from evidence instead of guesswork.

This plan does not claim that macOS boots on any new ARM target and does not start with implementation guidance.

## Current Knowledge Base

Start with:

1. `knowledge/platform/arm-macos-bringup-research.md`
2. `knowledge/platform/arm-bridge-readiness.md`
3. `knowledge/platform/arm-bridge-readiness-matrix.md`
4. `knowledge/platform/arm-release-evidence-ladder.md`
5. `knowledge/platform/arm-artifact-checklist.md`
6. `knowledge/platform/arm-question-map.md`
7. `knowledge/platform/arm-processor-scope-boundary.md`
8. `knowledge/platform/darwin-vs-macos-arm-boundary.md`
9. `knowledge/platform/arm-soc-dependency-map.md`
10. `knowledge/platform/arm-boot-to-iokit-handoff.md`
11. `knowledge/platform/arm-platform-identity-boundaries.md`
12. `knowledge/platform/arm-controller-prerequisites.md`
13. `knowledge/platform/arm-secure-boot-source-needed.md`
14. `knowledge/platform/arm-target-experiment-boundary.md`
15. `knowledge/platform/macos-kernel-layer-map.md`
16. `knowledge/platform/platform-expert-bridge-surface.md`
17. `knowledge/platform/devicetree-fixture-plan.md`
18. `knowledge/platform/kernel-collection-metadata-shape.md`
19. `knowledge/platform/interrupt-timer-source-needed.md`
20. `knowledge/platform/power-management-redaction-first.md`
21. `knowledge/platform/userland-boundary-map.md`
22. `knowledge/platform/xnu-source-study-plan.md`
23. `knowledge/platform/xnu-official-source-reference.md`
24. `knowledge/platform/xnu-osfmk-mach-lane.md`
25. `knowledge/platform/xnu-bsd-lane.md`
26. `knowledge/platform/xnu-pexpert-lane.md`
27. `knowledge/platform/xnu-iokit-lane.md`
28. `knowledge/platform/driverkit-bridge-boundary.md`
29. `knowledge/platform/dyld-framework-source-needed.md`
30. `knowledge/platform/xnu-first-level-inventory.md`

## Work Tracks

| Track | Goal | Next Output | Stop Condition |
| --- | --- | --- | --- |
| Source acquisition | Get verified release-backed metadata. | One reduced `15.6` personality dataset or exact missing-state update. | Source cannot be proven or redacted. |
| Boot handoff | Name boot prerequisites without patching guidance. | Boot artifact glossary or metadata index. | Requires raw payload interpretation. |
| Kernel collections | Locate platform-facing metadata before binary work. | Reduced collection metadata shape. | Requires disassembly or patching. |
| Platform identity | Separate DeviceTree, topology, provider, and name-match identity. | Topology-only DeviceTree source plan. | Requires raw property dump. |
| IOKit matching | Map expected providers and personalities. | Reduced personality records and candidate joins. | No source artifact. |
| Controller dependencies | Prioritize SoC dependencies beyond CPU. | Interrupt/timer and power source-needed notes. | Requires undocumented behavior. |
| Release comparison | Compare only equivalent reduced metadata. | Unresolved-preserving release diff. | One side lacks comparable metadata. |
| Bridge design readiness | Track which layers a future bridge would need to translate, emulate, expose, compare, or ignore. | Bridge-readiness matrix note. | The layer is not understood from artifacts. |
| Target experiments | Define bounded future experiment records only after knowledge layers are mapped. | Markdown experiment template after target is named. | Target, release, or artifact trail missing. |

## Immediate Backlog

1. Acquire or identify one legal `15.6` source artifact that can produce reduced personality metadata.
2. Done: first-level XNU subdirectories for `osfmk`, `bsd`, `pexpert`, and `iokit` are inventoried in `knowledge/platform/xnu-first-level-inventory.md`.
3. Define DriverKit entitlement redaction rules.
4. Choose the first dyld/framework metadata inventory target.
5. Convert DeviceTree fixture plan into a schema-compatible fixture only if redaction is clear.
6. Add a target-experiment template only after a target processor or board is named.
7. Maintain `planning/BRIDGE_READINESS_GAPS.md` as the active gap register.

## Evidence Rules

- Use `knowledge/platform/arm-release-evidence-ladder.md` before writing claims.
- Use `docs/guidelines/platform-review-checklist.md` before promoting platform notes.
- Use `docs/guidelines/release-acquisition.md` before recording release artifacts.
- Use `docs/guidelines/release-diff-input-readiness.md` before release comparison.
- Keep missing artifacts explicit instead of filling gaps with inference.

## Current Blockers

- No verified `15.6` source artifact exists in the workspace.
- No reduced boot artifact index exists.
- No reduced kernel collection index exists.
- No DeviceTree fixture or schema exists.
- No target ARM processor or board is recorded.
- No interrupt, timer, or power-management reduced fixture exists.
- XNU first-level inventory exists for macOS `15.6` (source tag `xnu-11417.140.69`); Mach, BSD, VM, scheduler, DriverKit entitlement, dyld, and framework layers are still source-needed at the file level.

## Done Criteria For A Session

A session is useful when it leaves one of:

- a reduced artifact with provenance;
- a source-needed note that narrows an unknown;
- a topology or personality fixture plan;
- a boundary note that prevents unsupported claims;
- a validation or acquisition checklist tied to bridge readiness.

## Related

- `FOCUS.md`
- `planning/NEXT.md`
- `planning/PLATFORM_DIRECTION.md`
- `planning/PLATFORM_SESSION_QUEUE.md`
- `planning/BRIDGE_READINESS_GAPS.md`
- `planning/15.6-platform-source-ranking.md`
- `knowledge/platform/README.md`
