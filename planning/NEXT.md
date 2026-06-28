# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/release-diff/README.md` now documents missing-artifact release diff fixtures from the `docs/missing-artifact-release-diff-readme` cycle.

## Current Recommendation

Continue by adding a manifest coverage table for 15.6 and 16.0.

Reason: acquisition manifest fixtures exist, but reviewers still need a compact table showing each release fixture and current evidence state.

## Next Branch

```text
docs/acquisition-manifest-coverage-table
```

## Session Goal

Update acquisition manifest documentation:

```text
datasets/fixtures/acquisition-manifest/README.md
```

## Research Question

How should acquisition manifest docs summarize 15.6 and 16.0 coverage?

## Target Output

A bounded README update that captures:

- Coverage table.
- Release fixture paths.
- Current state.
- Validation command.
- Missing-artifact boundary.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `datasets/fixtures/acquisition-manifest/README.md` includes a coverage table.
- The table lists 15.6 and 16.0 fixture paths.
- No unsupported driver claims are made.
- The validation command remains accurate.

## Follow-Up Queue

1. Add release diff unresolved-state guidance to compare prompt.
2. Add release diff fixture coverage to readiness guide.
3. Add acquisition manifest coverage to release artifact indexes.
