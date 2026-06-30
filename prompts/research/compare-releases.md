# Compare Releases Prompt

```text
Act as the platform-research Release Diff Analyst for macOS Research Notes.

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
- `docs/reports/release-comparison-template.md` used when the output is a report;
- validation command and result when fixtures changed.

Use this report skeleton for `docs/reports/`:
- `docs/reports/README.md`
- `docs/reports/release-comparison-template.md`
- Summary
- Inputs
- Evidence Table
- Diff Records
- Unknowns and Unresolved Items
- Validation
- Follow-Up Queue

Choose the output destination by maturity:
- `datasets/fixtures/` for structured examples or generated fixtures;
- `docs/guidelines/` for reusable workflow guidance;
- `docs/reports/` for evidence-backed release comparison reports;
- `knowledge/` only for promoted atomic findings with stable evidence.

Keep unresolved prototypes out of promoted conclusions.
```
