# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/schemas/release-diff.schema.json` was created in the `datasets/schemas/release-diff-fixture` cycle.

## Current Recommendation

Continue by adding an acquisition checklist.

Reason: release acquisition rules exist, but operators need a short checklist before collecting artifacts.

## Next Branch

```text
docs/acquisition-checklist
```

## Session Goal

Create the next experiment note:

```text
docs/guidelines/acquisition-checklist.md
```

## Research Question

What is the smallest acquisition checklist for release work?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Pre-acquisition checks.
- During-acquisition checks.
- Pre-commit checks.
- Stop conditions.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release acquisition rules.
- Existing provenance template.
- Existing workflow rules.

## Definition Of Done

Done means:

- `docs/guidelines/acquisition-checklist.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Checklist avoids raw artifact commits.

## Follow-Up Queue

1. Add release diff fixture.
2. Add release diff schema to validator.
3. Add release diff fixture validation pair.
