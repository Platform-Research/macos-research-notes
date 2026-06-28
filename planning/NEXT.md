# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/release-diff/missing-artifacts-15.6-to-16.0.fixture.json` was created in the `datasets/fixtures/missing-artifact-release-diff` cycle.

## Current Recommendation

Continue by adding release diff readiness checks to optional validator docs.

Reason: the missing-artifact diff fixture exists, but the validator docs do not yet explain how readiness relates to schema validation.

## Next Branch

```text
docs/release-diff-validator-readiness
```

## Session Goal

Update validator documentation:

```text
tools/schema-validate/README.md
```

## Research Question

How should schema validation docs describe release diff readiness checks?

## Target Output

A bounded documentation update that captures:

- Release diff schema coverage.
- Readiness guidance link.
- Unresolved missing-artifact fixture status.
- Difference between schema validity and evidence sufficiency.
- Validation command.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` links release diff readiness guidance.
- The README distinguishes valid JSON from diff-ready evidence.
- No unsupported driver claims are made.
- The validation command remains accurate.

## Follow-Up Queue

1. Add acquisition manifest README links to release readiness guidance.
2. Add missing-artifact release diff fixture to optional validator.
3. Add missing-artifact release diff README note.
