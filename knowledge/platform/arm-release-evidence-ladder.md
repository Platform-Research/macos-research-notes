# ARM Release Evidence Ladder

## Summary

The ARM macOS objective needs a clear evidence ladder so release facts, local runtime facts, and future target-processor experiments do not blur together. This ladder defines how weak metadata can guide research while reserving stronger claims for reproducible artifacts.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- Acquisition guide: `docs/guidelines/release-acquisition.md`
- Release diff readiness: `docs/guidelines/release-diff-input-readiness.md`
- Review guide: `docs/guidelines/platform-review-checklist.md`
- Current acquisition blocker: `macos/15.6/source-acquisition-log.md`
- Next work: `planning/NEXT.md`

## Evidence Levels

| Level | Evidence | Allowed Claim | Disallowed Claim |
| --- | --- | --- | --- |
| Missing | Artifact recorded as unavailable | The question is unresolved. | Release behavior changed. |
| Planning | Queue item or focus note | The question matters to ARM bridge readiness. | The answer is known. |
| Generic knowledge | IOKit or platform note from committed sources | The concept is relevant. | It applies to a specific release or processor. |
| Fixture | Reduced example data | The shape or tool behavior is understood. | Release-wide or host-wide behavior. |
| Local runtime | Host-labeled command output | This host exposed a bounded fact. | Another host or release behaves the same. |
| Release-backed metadata | Reduced, provenance-backed release artifact | The release contains this metadata. | The driver started or hardware works. |
| Runtime attachment | Redacted host-labeled attachment evidence | A relationship was observed on that host. | Stable support across releases. |
| Reproducible target experiment | Bounded experiment on a named target | The named target showed the recorded result. | General ARM support. |

## Observations

- `release-acquisition.md` allows local commands, local SDK/system files, official Apple sources, and documented user-provided artifacts while blocking raw payload commits.
- `release-diff-input-readiness.md` requires reduced, schema-validated metadata before treating releases as comparable.
- `source-acquisition-log.md` records that the current host is not a `15.6` source and that no `15.6` source artifact is present.
- `platform-review-checklist.md` blocks release comparisons from inferring differences from missing artifacts.
- `NEXT.md` keeps release-diff work paused until a verified `15.6` source artifact exists.

## Inferences

- ARM bridge-readiness work can continue at planning and generic-knowledge levels while release acquisition is blocked.
- The first major upgrade in evidence quality will be a verified release-backed personality dataset, especially one with platform-facing provider classes or family-specific keys.
- Local ARM host evidence must be labeled as local runtime evidence, not as proof about macOS `15.6` or any future target.
- A future processor-specific experiment should be treated as the top of the ladder only when target, release, command, artifact, and result are all recorded.

## Research Use

Before writing an ARM-related claim:

1. Pick the evidence level.
2. Use the allowed claim for that level.
3. Record source path, command, release, host build, or missing state.
4. Preserve unresolved state when the artifact is absent.
5. Avoid moving upward on the ladder without a new artifact.

## Unknowns

- The project does not yet have a target-processor experiment format.
- The minimum safe runtime attachment record is undecided.
- The `15.6` source blocker prevents release-backed comparison for that release.
- No ARM-specific release matrix exists yet.

## Sources

- `knowledge/platform/arm-macos-bringup-research.md`
- `docs/guidelines/release-acquisition.md`
- `docs/guidelines/release-diff-input-readiness.md`
- `docs/guidelines/platform-review-checklist.md`
- `macos/15.6/source-acquisition-log.md`
- `planning/NEXT.md`
