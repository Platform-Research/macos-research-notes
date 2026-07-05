# Kernel Collection Metadata Shape

## Summary

Kernel collection work should define a reduced metadata shape before any binary interpretation. For bridge readiness, the useful question is where platform-facing personalities, bundle identifiers, classes, and dependencies appear in release-owned artifacts.

## Context

- Kernel collection note: `knowledge/platform/kernel-collections.md`
- Artifact checklist: `knowledge/platform/arm-artifact-checklist.md`
- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- Release acquisition guide: `docs/guidelines/release-acquisition.md`
- Release diff readiness: `docs/guidelines/release-diff-input-readiness.md`

## Proposed Reduced Fields

A first kernel collection metadata record should prefer:

- macOS release and build, if known;
- collection artifact name;
- artifact state: missing, raw, reduced, or derived;
- source path or acquisition command;
- acquisition date;
- source type;
- bundle identifiers present, when safely derived;
- platform-facing class or personality names, when safely derived;
- link to reduced personality records;
- redaction policy;
- validation command;
- unresolved fields.

It should not include:

- raw kernel collection payloads;
- binary blobs;
- disassembly excerpts;
- patching notes;
- unsupported behavior claims.

## Bridge-Relevant Use

Reduced kernel collection metadata helps a future bridge answer:

- which release-owned artifacts carry platform-facing services;
- whether a service expectation is release-backed or fixture-only;
- which metadata can be compared across releases;
- which platform dependencies are blocked by missing source artifacts.

## Observations

- `kernel-collections.md` already keeps first-pass work at reduced metadata and provenance.
- `release-acquisition.md` allows small redacted metadata and provenance notes while blocking raw payload commits.
- `release-diff-input-readiness.md` requires comparable reduced metadata before release-to-release diffing.
- `arm-artifact-checklist.md` ranks reduced kernel collection metadata as an early bridge-readiness artifact class.

## Inferences

- The first schema may not need to be a JSON schema; a Markdown shape note can precede structured data.
- Reduced personality metadata is likely the easiest bridge from collection-level work to IOKit matching.
- Release comparison should stay unresolved until both sides have equivalent collection or personality metadata.

## Unknowns

- No reduced kernel collection index exists.
- The exact command or source path for deriving safe collection metadata is not chosen.
- It is unknown which collection-level facts can be obtained without binary interpretation.
- No `15.6` source artifact exists to validate this shape.

## Sources

- `knowledge/platform/kernel-collections.md`
- `knowledge/platform/arm-artifact-checklist.md`
- `knowledge/platform/macos-kernel-layer-map.md`
- `docs/guidelines/release-acquisition.md`
- `docs/guidelines/release-diff-input-readiness.md`
