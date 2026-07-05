# Darwin vs macOS ARM Boundary

## Summary

Darwin component knowledge and a future macOS/kernel-to-ARM bridge are different research layers. The bridge-readiness objective includes release artifacts, platform identity, kernel collections, IOKit matching, user-visible services, and controller dependencies. A Darwin-level observation can support the project, but it should not be described as proof that a full macOS environment works on a target.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- Evidence ladder: `knowledge/platform/arm-release-evidence-ladder.md`
- Handoff note: `knowledge/platform/arm-boot-to-iokit-handoff.md`
- Platform metadata note: `knowledge/platform/platform-facing-metadata.md`
- Scope guide: `docs/guidelines/scope-boundaries.md`

## Boundary Table

| Claim Layer | Example Evidence | Safe Claim | Unsafe Upgrade |
| --- | --- | --- | --- |
| Conceptual Darwin knowledge | Kernel or IOKit notes | The concept is relevant to Darwin/macOS internals. | macOS runs on a target platform. |
| Release metadata | Reduced macOS artifact metadata | A macOS release contains this metadata. | A target processor can use it. |
| Platform service expectation | Personality and provider metadata | macOS expects a provider or match surface. | The provider exists on a target. |
| Runtime observation | Host-labeled registry or attachment evidence | This host showed the observation. | All ARM systems behave the same. |
| Target experiment | Named target result | The target produced this bounded result. | Full macOS support. |

## Observations

- `arm-release-evidence-ladder.md` separates generic knowledge from release-backed metadata and target experiments.
- `platform-facing-metadata.md` defines platform-facing metadata as a reduced evidence layer, not as runtime behavior.
- `arm-boot-to-iokit-handoff.md` treats boot artifacts, kernel collections, platform identity, service publication, and driver matching as separate layers.
- `scope-boundaries.md` keeps broad unsupported hardware goals out of scope without a specific device, OS version, and artifact trail.

## Inferences

- Darwin-level research is useful when it clarifies kernel, IOKit, or registry concepts, but the macOS ARM objective needs release-owned macOS artifacts.
- A future macOS/kernel-to-ARM bridge requires platform and service assumptions beyond a CPU architecture label.
- A future experiment should say exactly which layer it reached rather than using a broad "ran macOS" phrase too early.

## Research Use

Use this note when reviewing language:

- Prefer "Darwin concept", "macOS release metadata", "platform service expectation", or "target observation" over broad claims.
- Treat "macOS on ARM" as a possible future application of the knowledge base, not as the immediate objective or an achieved state.
- Require artifact-backed evidence before moving from Darwin concepts to macOS release claims.

## Unknowns

- The project has not yet defined a formal milestone ladder from Darwin concept to full macOS userland.
- The minimum user-visible state that would count as a bridge-readiness milestone is undecided.
- No target-specific experiment exists yet.

## Sources

- `knowledge/platform/arm-macos-bringup-research.md`
- `knowledge/platform/arm-release-evidence-ladder.md`
- `knowledge/platform/arm-boot-to-iokit-handoff.md`
- `knowledge/platform/platform-facing-metadata.md`
- `docs/guidelines/scope-boundaries.md`
