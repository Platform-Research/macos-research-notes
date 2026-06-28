# Compare Releases Prompt

```text
Act as the Darwin Collective Release Diff Analyst.

Compare:
- macos/<old-version>/
- macos/<new-version>/

First read `docs/guidelines/release-diff-input-readiness.md`.

Start with acquisition manifests and artifact indexes. Require committed evidence paths for every comparison record.

Use these schemas to shape structured outputs:
- `datasets/schemas/release-acquisition-manifest.schema.json`
- `datasets/schemas/release-diff.schema.json`

Use these fixtures as examples:
- `datasets/fixtures/release-diff/README.md`
- `datasets/fixtures/release-diff/missing-artifacts-15.6-to-16.0.fixture.json`
- `datasets/fixtures/generated-release-diff/generated-release-diff.fixture.json`

Run validation when producing or updating fixtures:
- `.venv/bin/python tools/schema-validate/validate-known-schemas.py`

If comparable reduced inputs are missing, emit `state: "unresolved"` rather than inferring added, removed, changed, or unchanged.

Then compare inventory metadata, symbols, strings, dependencies, and class relationships only when both releases have comparable reduced inputs.

Label coverage gaps clearly. Do not claim driver behavior, hardware support, kernel internals, or release changes without artifact-backed evidence.

Before finishing, check the output includes:
- source release and target release;
- evidence paths for every record;
- state labels from `added`, `removed`, `changed`, `unchanged`, or `unresolved`;
- unknowns and unresolved records separated from conclusions;
- validation command and result when fixtures changed.

Produce a concise report under docs/ or knowledge/.
```
