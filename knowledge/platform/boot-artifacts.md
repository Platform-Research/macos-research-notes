# Boot Artifacts

## Summary

Boot artifact research should start as metadata indexing: names, provenance, release scope, and relationships to later kernel and IOKit stages. This note intentionally avoids boot modification, patching guidance, or claims about boot viability.

## Context

- Planning guide: `planning/PLATFORM_DIRECTION.md`
- Review checklist: `docs/guidelines/platform-review-checklist.md`
- Acquisition rules: `docs/guidelines/release-acquisition.md`
- Related platform notes: `knowledge/platform/platform-facing-metadata.md`, `knowledge/platform/topology-vocabulary.md`

## Metadata-Only Questions

- Which boot-related artifacts can be named from committed release metadata?
- Which source path or command produced the artifact metadata?
- Is the artifact raw, reduced, derived, or missing?
- Which release folder owns the metadata?
- Which later platform-facing layer does the artifact feed: kernel collection, registry topology, personality matching, or controller metadata?

## First-Pass Fields

Prefer:

- release version;
- artifact name;
- source type;
- source path or command;
- acquisition date;
- state: raw, reduced, derived, or missing;
- redaction policy;
- output path;
- validation command.

## Boundaries

- Do not commit raw boot payloads.
- Do not describe patching or modification steps.
- Do not infer boot viability from artifact presence.
- Do not compare releases until both sides have equivalent reduced metadata.

## Unknowns

- The repository does not yet have reduced boot artifact indexes.
- The smallest safe boot metadata source has not been selected.
- The project has not yet defined a boot artifact schema.

## Next Work

- Add a boot artifact acquisition question list under `planning/` or `macos/<version>/`.
- Identify which public references are needed before deeper boot notes.
- Keep boot research behind the platform review checklist.

## Review

Use `docs/guidelines/platform-review-checklist.md` before promoting boot artifact notes into reports or release comparisons.
