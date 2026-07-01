# Kernel Collections

## Summary

Kernel collection research should begin with reduced metadata and provenance. The first goal is to know which collection-related facts can be indexed safely, not to interpret binaries or infer platform behavior.

## Context

- Planning guide: `planning/PLATFORM_DIRECTION.md`
- Review checklist: `docs/guidelines/platform-review-checklist.md`
- Acquisition rules: `docs/guidelines/release-acquisition.md`
- Related platform notes: `knowledge/platform/boot-artifacts.md`, `knowledge/platform/platform-facing-metadata.md`

## Metadata-Only Questions

- Which release folder records collection-related metadata?
- Which source artifact produced the metadata?
- Which kext, dext, or platform-facing service names can be indexed without raw binary payloads?
- Which extracted facts can be validated by schema or reproducible command?
- Which facts are release-specific versus local-runtime examples?

## First-Pass Fields

Prefer:

- release version;
- collection-related artifact name;
- source type and path;
- acquisition date;
- reduced metadata output path;
- redaction policy;
- validation command;
- unresolved fields.

## Boundaries

- Do not commit raw kernel collection payloads.
- Do not disassemble or interpret binaries as part of first-pass metadata notes.
- Do not infer driver availability or platform support from collection presence alone.
- Do not mix collection metadata with runtime attachment evidence.

## Unknowns

- The repository does not yet have reduced kernel collection indexes.
- The project has not selected a safe minimal source for collection metadata.
- The relationship between collection metadata and reduced personality records still needs concrete examples.

## Next Work

- Define the smallest reduced collection metadata record worth committing.
- Identify public references needed before deeper collection notes.
- Connect collection metadata to release acquisition manifests only after provenance exists.

## Review

Use `docs/guidelines/platform-review-checklist.md` before promoting kernel collection notes into reports or release comparisons.
