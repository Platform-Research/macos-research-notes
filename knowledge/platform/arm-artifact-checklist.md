# ARM Artifact Checklist

## Summary

This checklist names the artifact classes that matter most for ARM bridge readiness. It is intentionally ordered from safer metadata toward stronger runtime evidence. The checklist does not require raw payloads in git and does not claim that any target processor is supported.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- Evidence ladder: `knowledge/platform/arm-release-evidence-ladder.md`
- Acquisition guide: `docs/guidelines/release-acquisition.md`
- Release diff readiness: `docs/guidelines/release-diff-input-readiness.md`
- Current blocker: `macos/15.6/source-acquisition-log.md`

## Artifact Classes

| Priority | Artifact Class | Why It Matters | First Commit-Friendly Output |
| --- | --- | --- | --- |
| 1 | Release provenance | Keeps every claim tied to a macOS version and source. | Artifact index and acquisition manifest. |
| 2 | Reduced personality metadata | Shows expected providers, names, probe scores, match categories, and family keys. | Schema-shaped kext or DriverKit personality records. |
| 3 | Reduced kernel collection metadata | Connects platform-facing services to release-owned collection artifacts. | Collection index without raw binary payloads. |
| 4 | Reduced DeviceTree or topology records | Describes platform identity and ancestry without raw properties. | Plane, class, depth, source command, redaction policy. |
| 5 | Controller-family metadata | Maps PCIe, USB, storage, display, networking, power, timer, and interrupt assumptions. | Family-specific metadata notes and reduced examples. |
| 6 | Candidate joins | Connects expected providers to observed topology without claiming attachment. | Candidate join fixture or report. |
| 7 | Host-labeled runtime attachment | Shows one bounded provider/client relationship on one host. | Redacted attachment note with host build. |
| 8 | Target experiment record | Captures a named target, release, method, and result. | Experiment note, not a broad support claim. |

## Minimum Provenance

Every ARM-relevant artifact note should record:

- macOS release or host build;
- source path, command, or user-provided artifact description;
- acquisition date;
- artifact state: missing, raw, reduced, derived, or runtime;
- redaction policy;
- output path;
- validation command when structured data is added;
- unresolved fields.

## Observations

- `release-acquisition.md` allows committed reduced metadata and provenance notes while keeping raw installers, raw IORegistry dumps, and large payloads out of git.
- `release-diff-input-readiness.md` requires reduced, comparable metadata before release-to-release comparison.
- `source-acquisition-log.md` records that the current repository lacks a verified `15.6` source artifact.
- `arm-release-evidence-ladder.md` separates missing, planning, fixture, local runtime, release-backed metadata, runtime attachment, and target experiment evidence.

## Inferences

- Reduced personality metadata is the highest-leverage first artifact because it connects release provenance to IOKit matching and controller-family expectations.
- DeviceTree and topology records are essential for ARM platform identity, but property-level data should wait for redaction policy.
- Target experiments should come after the artifact trail can explain what the experiment is testing.

## Stop Lines

Stop before committing:

- raw installers, IPSWs, kernel collections, or boot payloads;
- raw IORegistry or DeviceTree property dumps;
- binary blobs without a branch explicitly scoped for them;
- local identifiers without redaction;
- processor support claims from metadata-only evidence.

## Sources

- `knowledge/platform/arm-macos-bringup-research.md`
- `knowledge/platform/arm-release-evidence-ladder.md`
- `docs/guidelines/release-acquisition.md`
- `docs/guidelines/release-diff-input-readiness.md`
- `macos/15.6/source-acquisition-log.md`
