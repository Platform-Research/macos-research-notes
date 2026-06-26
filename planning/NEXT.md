# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/optional-dependencies.md` was updated to reference `requirements-dev.txt` in the `docs/requirements-dev-usage` cycle.

## Current Recommendation

Continue by adding the first release diff fixture schema.

Reason: release diff planning exists, but there is no schema draft for diff fixtures yet.

## Next Branch

```text
datasets/schemas/release-diff-fixture
```

## Session Goal

Create the next experiment note:

```text
datasets/schemas/release-diff.schema.json
```

## Research Question

What is the smallest schema draft for release diff fixtures?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Source release references.
- Diff record kinds.
- Added, removed, changed, unresolved states.
- Provenance and redaction metadata.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release diff plan.
- Existing schemas and fixtures.
- Existing release acquisition rules.

## Definition Of Done

Done means:

- `datasets/schemas/release-diff.schema.json` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- JSON syntax validates locally.

## Follow-Up Queue

1. Add acquisition checklist.
2. Add release diff fixture.
3. Add release diff schema to validator.
