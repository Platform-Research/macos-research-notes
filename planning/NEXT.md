# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/acquisition-checklist.md` was created in the `docs/acquisition-checklist` cycle.

## Current Recommendation

Continue by adding a release diff fixture.

Reason: the release diff schema exists and needs a minimal fixture.

## Next Branch

```text
datasets/fixtures/release-diff
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/release-diff/README.md
```

## Research Question

What is the smallest release diff fixture?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- One unresolved release diff record.
- Source release references.
- Provenance policy.
- Local JSON syntax validation.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release diff schema.
- Existing release diff plan.
- Existing release acquisition rules.

## Definition Of Done

Done means:

- `datasets/fixtures/release-diff/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Fixture JSON parses locally.

## Follow-Up Queue

1. Add release diff schema to validator.
2. Add release diff fixture validation pair.
3. Add first generated release diff prototype.
