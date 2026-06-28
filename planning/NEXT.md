# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/README.md` now explains release diff readiness from the `docs/release-diff-validator-readiness` cycle.

## Current Recommendation

Continue by adding acquisition manifest README links to release readiness guidance.

Reason: acquisition manifest docs explain validation, but they do not yet point to release diff readiness before comparisons.

## Next Branch

```text
docs/acquisition-manifest-readiness-links
```

## Session Goal

Update acquisition manifest documentation:

```text
datasets/fixtures/acquisition-manifest/README.md
```

## Research Question

How should acquisition manifest docs point reviewers toward release diff readiness?

## Target Output

A bounded documentation update that captures:

- Release readiness guidance link.
- Manifest fixture list.
- Missing-artifact interpretation.
- Validation command.
- Boundary between acquisition and comparison.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `datasets/fixtures/acquisition-manifest/README.md` links `docs/guidelines/release-diff-input-readiness.md`.
- The README distinguishes acquisition state from comparison readiness.
- No unsupported driver claims are made.
- The validation command remains accurate.

## Follow-Up Queue

1. Add missing-artifact release diff fixture to optional validator.
2. Add missing-artifact release diff README note.
3. Add manifest coverage table for 15.6 and 16.0.
