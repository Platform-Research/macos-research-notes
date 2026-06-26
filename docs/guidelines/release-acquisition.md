# Release Acquisition

## Purpose

Release acquisition rules keep raw artifacts separate from derived metadata and make every committed release fact traceable.

## Allowed Sources

Allowed acquisition sources:

- local system commands such as `sw_vers`, `uname`, `ioreg`, and `plutil`;
- local SDK or system files already present on the research host;
- official Apple downloads or documentation;
- explicitly documented user-provided artifacts.

## Folder Flow

Use this path:

1. `downloads/` for temporary raw acquisition.
2. `macos/<version>/` for release-specific indexes and notes.
3. `datasets/` for reduced structured metadata.
4. `experiments/` for bounded investigation.
5. `knowledge/` or `docs/` for promoted conclusions.

## Commit Rules

Do not commit:

- large raw downloads;
- IPSW or installer payloads;
- unredacted IORegistry dumps;
- local process data;
- local identifiers such as MAC addresses;
- binary blobs unless the branch is specifically scoped and approved.

Do commit:

- small redacted metadata;
- provenance notes;
- scripts that regenerate derived metadata;
- schemas, fixtures, and reduced examples.

## Provenance Fields

Every release-specific metadata note should capture:

- source path or command;
- host macOS version and build, when local;
- date of acquisition;
- redaction policy;
- whether the artifact is raw, reduced, or derived.

## Stop Rules

Stop before acquisition when:

- the source requires network access and the branch did not plan for it;
- the artifact is too large to review;
- provenance is unclear;
- redaction cannot be checked locally.
