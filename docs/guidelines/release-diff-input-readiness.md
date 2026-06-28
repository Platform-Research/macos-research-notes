# Release Diff Input Readiness

## Purpose

Use this gate before treating two macOS release folders as ready for release-to-release diffing.

Readiness does not require raw artifacts in git. It requires enough reduced, schema-validated metadata to make the diff bounded and reviewable.

## Required Inputs

Each release being compared should have:

- a release artifact index under `macos/<version>/artifacts.md`;
- an acquisition manifest under `datasets/fixtures/acquisition-manifest/`;
- explicit `missing` states for unavailable artifacts;
- reduced datasets for the artifact class being compared;
- provenance notes for any derived or reduced input.

## Required Validation

Run manifest and diff fixture validation from the repository root:

```sh
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

Relevant schemas:

- `datasets/schemas/release-acquisition-manifest.schema.json`
- `datasets/schemas/release-diff.schema.json`

Relevant guidance:

- `docs/guidelines/release-acquisition.md`
- `docs/guidelines/release-manifest-validation-examples.md`
- `docs/guidelines/reduced-release-acquisition-checklist-example.md`

## Missing Artifacts

Missing artifacts do not block a diff by themselves. They change the output policy:

- if both releases lack the same artifact class, do not infer change;
- if one release has reduced metadata and the other does not, emit `state: "unresolved"`;
- if provenance is incomplete, emit `state: "unresolved"` or stop before publishing;
- if raw artifacts are required to answer the question, open an acquisition branch instead of forcing the diff.

## Diff-Ready Checklist

- [ ] Both releases have acquisition manifests.
- [ ] Both manifests validate against the acquisition manifest schema.
- [ ] The compared artifact class is present as reduced metadata for both releases, or the gap is represented as `unresolved`.
- [ ] Source release and target release are recorded in the release diff `source` block.
- [ ] Diff records cite committed evidence paths.
- [ ] Notes avoid claims about driver behavior, hardware support, or kernel internals without artifact-backed evidence.

## Stop Conditions

Stop before diffing when:

- a required reduced dataset is absent and cannot be represented honestly as `unresolved`;
- the diff would depend on uncommitted raw artifacts;
- release provenance is unclear;
- schemas cannot represent the comparison;
- the branch starts mixing acquisition, schema design, and interpretation.
