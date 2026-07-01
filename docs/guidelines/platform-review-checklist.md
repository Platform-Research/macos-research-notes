# Platform Review Checklist

Use this checklist before promoting platform-facing notes, fixtures, reports, or README updates.

## Evidence

- [ ] Every observation cites a committed path, command, artifact, or public reference.
- [ ] Inferences are labeled separately from observations.
- [ ] Unknowns remain explicit when reduced metadata is incomplete.
- [ ] Local-runtime examples are labeled with host version and build when relevant.

## Claims

- [ ] Candidate joins are not described as runtime attachment.
- [ ] Parsed PCI, USB, or other family keys are not described as hardware support.
- [ ] Fixture examples are not described as release-wide behavior.
- [ ] Release comparisons do not infer differences from missing artifacts.
- [ ] No boot viability, patching, or hardware enablement claim appears without bounded evidence.

## Data Boundaries

- [ ] Raw IORegistry output is not committed.
- [ ] Raw installers, IPSWs, kernel collections, and binary payloads are not committed.
- [ ] Registry properties, blobs, local identifiers, and process-local values are omitted unless a schema and redaction policy exist.
- [ ] User-client, entitlement, and power-management values are summarized or omitted unless specifically scoped.

## Scope

- [ ] The branch has one primary intent.
- [ ] The output path matches the work type: `knowledge/`, `experiments/`, `datasets/`, `macos/`, `docs/`, or `planning/`.
- [ ] The next step does not require boot modification, kernel patching, binary patching, or unsupported hardware claims.
- [ ] Follow-ups go to `planning/PLATFORM_SESSION_QUEUE.md` or `planning/PARKING_LOT.md`.

## Validation

- [ ] JSON fixtures parse.
- [ ] Known schemas validate after schema-shaped data changes.
- [ ] Tool tests run when parser or join behavior changes.
- [ ] `git diff --check` passes before commit.
