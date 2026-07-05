# Platform Role vs Driver Behavior

## Summary

Platform role describes where a service, personality, or metadata record sits in the platform matching model. Driver behavior describes what a selected driver actually does after probing, attachment, and startup. Reduced platform metadata can support the first claim, but it should not be promoted into the second claim without runtime evidence.

## Context

- Related platform note: `knowledge/platform/platform-facing-metadata.md`
- Related lifecycle note: `knowledge/platform/provider-discovery-vs-startup.md`
- Related matching note: `knowledge/platform/matching-path.md`
- Related review guide: `docs/guidelines/platform-review-checklist.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 241

## Role Evidence

Role evidence can come from reduced metadata such as:

- bundle identifier and bundle type;
- personality name;
- `IOClass`;
- `IOProviderClass`;
- generic match keys such as `IONameMatch`;
- ordering or grouping metadata such as `IOProbeScore` and `IOMatchCategory`;
- family-specific match keys such as PCI match strings;
- topology fields such as registry plane, class name, depth, and ancestor classes.

This evidence can say that a record is platform-facing, provider-facing, controller-facing, virtual-provider-facing, or candidate-join-facing. It cannot say that a driver performed useful work.

## Behavior Evidence

Behavior evidence needs a stronger artifact class, such as a bounded runtime registry observation, a trace, a log, or another host-labeled record that shows attachment, startup, or runtime activity. Even then, the claim should stay scoped to the observed host, release, artifact, and command.

## Observations

- `platform-facing-metadata.md` defines reduced metadata as the layer connecting boot artifacts, kernel collections, IOKit personalities, registry ancestry, and hardware controller classes.
- `provider-discovery-vs-startup.md` separates provider publication, personality candidates, probing, attachment, and startup into distinct evidence stages.
- `matching-path.md` separates personality metadata, parsed family keys, candidate joins, and runtime attachment.
- `platform-review-checklist.md` blocks hardware enablement, runtime attachment, support-quality, and release-wide claims when the evidence is only reduced metadata.

## Inferences

- `IOProviderClass = IOPCIDevice` is role evidence for PCI-facing matching, not behavior evidence for a working PCI device.
- A candidate join between a topology class and a personality provider class is useful platform knowledge, but it still describes a possible relationship before probe or startup.
- Parsed PCI, USB, or other family-specific keys refine role and identity context, but they do not prove attachment, performance, compatibility, or support quality.
- Release comparison should compare roles only when both sides have equivalent reduced metadata; behavior comparison requires comparable runtime evidence.

## Research Use

When writing or reviewing platform notes:

1. State whether the claim is about role or behavior.
2. Keep metadata-derived claims at the role layer.
3. Require runtime artifacts before saying a service attached, started, worked, failed, or enabled hardware.
4. Label local-runtime examples with host version and build when behavior is being discussed.
5. Preserve unknowns when the available evidence only identifies a plausible matching surface.

## Unknowns

- The project does not yet have a release-backed runtime example that follows one provider through attachment and startup.
- DriverKit role and behavior boundaries still need a dedicated side-by-side note.
- The minimum artifact set for behavior comparison across macOS releases is not defined yet.

## Sources

- `knowledge/platform/platform-facing-metadata.md`
- `knowledge/platform/provider-discovery-vs-startup.md`
- `knowledge/platform/matching-path.md`
- `docs/guidelines/platform-review-checklist.md`
