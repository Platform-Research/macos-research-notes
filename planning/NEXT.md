# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/release-diff-input-readiness.md` now links release diff fixture coverage from the `docs/release-diff-fixture-coverage-readiness` cycle.

## Current Recommendation

Continue by adding acquisition manifest coverage to release artifact indexes.

Reason: acquisition manifest coverage is documented in the fixture README, but the release indexes do not summarize their manifest coverage state.

## Next Branch

```text
macos/acquisition-manifest-coverage-indexes
```

## Session Goal

Update release artifact indexes:

```text
macos/15.6/artifacts.md
macos/16.0/artifacts.md
```

## Research Question

How should release artifact indexes summarize manifest coverage?

## Target Output

A bounded index update that captures:

- Manifest fixture path.
- Current evidence state.
- Missing reduced inputs.
- Link to coverage README.
- No raw artifacts acquired.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `macos/15.6/artifacts.md` summarizes acquisition manifest coverage.
- `macos/16.0/artifacts.md` summarizes acquisition manifest coverage.
- No unsupported driver claims are made.
- Existing validation command remains visible.

## Follow-Up Queue

1. Add compare prompt schema references.
2. Add release diff prompt output checklist.
3. Add release diff fixture coverage to compare prompt.
