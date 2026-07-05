# ARM Secure Boot Source Needed

## Summary

Secure boot and trust-chain questions are relevant to ARM bridge readiness, but this repository does not yet have enough committed source material to describe them in detail. For now, secure boot should be tracked as a source-needed prerequisite, not as implementation guidance.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- Handoff note: `knowledge/platform/arm-boot-to-iokit-handoff.md`
- Artifact checklist: `knowledge/platform/arm-artifact-checklist.md`
- Acquisition guide: `docs/guidelines/release-acquisition.md`
- Scope guide: `docs/guidelines/scope-boundaries.md`

## Safe Questions

- Which public references are needed before writing trust-chain notes?
- Which release-owned artifacts can be indexed without raw payloads?
- Which metadata can be recorded as missing or unresolved?
- Which terms need glossary entries before deeper work?
- Which claims would cross into boot modification or bypass guidance?

## Current Boundary

Do not write:

- bypass instructions;
- patching guidance;
- target-specific trust-chain workarounds;
- boot viability claims;
- raw payload extraction notes without a scoped acquisition session.

## Observations

- `boot-artifacts.md` keeps boot artifact research at metadata indexing and avoids boot modification.
- `arm-boot-to-iokit-handoff.md` treats boot metadata as the first layer before kernel collection, platform identity, and IOKit matching.
- `release-acquisition.md` blocks unclear, large, raw, or unreviewable acquisition from being committed.
- `scope-boundaries.md` requires pausing when a step would risk boot stability or depends on unclear artifact sources.

## Inferences

- Secure boot is a prerequisite topic for ARM bridge readiness, but not ready for detailed internal notes in this repository.
- The immediate useful output is a source acquisition list or glossary stub, not technical guidance.
- Any future secure-boot note should be reviewed more strictly than metadata-only IOKit notes because it can drift into unsafe or unreproducible territory.

## Unknowns

- Public references for the trust-chain layer have not been collected in this repository.
- The project has not decided which secure-boot terms need glossary treatment first.
- No release-specific boot artifact metadata index exists yet.

## Sources

- `knowledge/platform/arm-macos-bringup-research.md`
- `knowledge/platform/arm-boot-to-iokit-handoff.md`
- `knowledge/platform/arm-artifact-checklist.md`
- `knowledge/platform/boot-artifacts.md`
- `docs/guidelines/release-acquisition.md`
- `docs/guidelines/scope-boundaries.md`
