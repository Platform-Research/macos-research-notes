# ARM Target Experiment Boundary

## Summary

A future ARM target experiment should be treated as a bounded observation, not as proof that a general macOS/kernel-to-ARM bridge exists. The experiment boundary must name the target, release, artifact trail, method, result, and stop condition before any interpretation is promoted.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- Evidence ladder: `knowledge/platform/arm-release-evidence-ladder.md`
- Artifact checklist: `knowledge/platform/arm-artifact-checklist.md`
- Scope boundaries: `docs/guidelines/scope-boundaries.md`
- Review guide: `docs/guidelines/platform-review-checklist.md`

## Required Experiment Frame

A target experiment note should include:

- target processor or board identifier;
- macOS release and build;
- source artifacts used;
- whether the artifacts are raw, reduced, derived, or runtime;
- commands, tools, or observations used;
- host or target environment labels;
- expected safe output;
- exact stop condition;
- redaction policy;
- what the result does not prove.

## Allowed Claims

An experiment can claim:

- a named target produced a named observation;
- a command or artifact produced a bounded result;
- a dependency was missing, unresolved, or incompatible at the recorded layer;
- a follow-up artifact is needed.

It should not claim:

- general macOS support on ARM processors;
- boot viability beyond the named experiment;
- driver support or support quality from metadata;
- hardware enablement without runtime evidence;
- release-wide behavior from one target.

## Observations

- `scope-boundaries.md` keeps broad unsupported hardware goals out of scope until there is a specific device, OS version, and artifact trail.
- `platform-review-checklist.md` blocks boot viability, patching, hardware enablement, and support-quality claims without bounded evidence.
- `arm-release-evidence-ladder.md` places target experiments above release-backed metadata and runtime attachment, but only for a named target and result.
- `arm-artifact-checklist.md` requires provenance, artifact state, redaction policy, and validation when structured data is added.

## Inferences

- A target experiment is premature until the repository can describe which layer it tests.
- The first target experiment format should probably be Markdown, not a schema, because the fields may still change.
- Once three target experiments share the same shape, a schema or template may be justified.

## Unknowns

- No target processor or board is currently recorded in this repository.
- No experiment template exists for ARM target work.
- The minimum runtime evidence needed for a boot-stage observation is not defined.

## Sources

- `knowledge/platform/arm-macos-bringup-research.md`
- `knowledge/platform/arm-release-evidence-ladder.md`
- `knowledge/platform/arm-artifact-checklist.md`
- `docs/guidelines/scope-boundaries.md`
- `docs/guidelines/platform-review-checklist.md`
