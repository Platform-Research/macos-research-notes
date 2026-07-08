# Platform Support Wording

## Summary

At the metadata layer, "platform support" should mean only that a release or artifact exposes metadata relevant to a platform role. It should not mean boot viability, hardware enablement, driver success, performance, or compatibility.

## Context

- Related review guide: `docs/guidelines/platform-review-checklist.md`
- Related metadata note: `knowledge/platform/platform-facing-metadata.md`
- Related role note: `knowledge/platform/platform-role-vs-driver-behavior.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 217

## Preferred Wording

Use:

- "metadata indicates a candidate";
- "the fixture contains a provider-class signal";
- "the artifact exposes platform-facing fields";
- "release-backed evidence is still needed";
- "runtime attachment is not established."

Avoid:

- "supported";
- "working";
- "enabled";
- "compatible";
- "the driver runs";
- "the device is handled."

## Observations

- The platform review checklist blocks hardware enablement, boot viability, and support-quality claims without bounded evidence.
- `platform-role-vs-driver-behavior.md` separates platform role metadata from driver behavior.
- `platform-facing-metadata.md` frames reduced metadata as research evidence rather than implementation proof.

## Inferences

- "Support" is too broad unless the note defines the evidence layer explicitly.
- Metadata-only notes should prefer "platform-facing" and "candidate" language.
- Stronger support wording requires release-backed and runtime evidence, plus clear scope.

## Sources

- `docs/guidelines/platform-review-checklist.md`
- `knowledge/platform/platform-facing-metadata.md`
- `knowledge/platform/platform-role-vs-driver-behavior.md`
