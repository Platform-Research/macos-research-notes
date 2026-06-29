# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/publisher.md` now reminds authors to preserve evidence tables in reports from the `ai/publisher-evidence-table-reminder` cycle.

## Current Recommendation

Continue by adding release diff analyst report path example.

Reason: release diff analyst chooses between fixtures and reports, but should point to a concrete report path example as well as fixture paths.

## Next Branch

```text
ai/release-diff-analyst-report-path-example
```

## Session Goal

Update release diff analyst agent:

```text
ai/agents/release-diff-analyst.md
```

## Research Question

How should release diff analyst show report path examples?

## Target Output

A bounded agent update that captures:

- Report path example.
- Fixture path example.
- Validation result location.
- Evidence path reminder.
- Unresolved output boundary.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/release-diff-analyst.md` includes a concrete report path example.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add research lead fixture/report branching cue.
2. Add publisher fixture validation example.
3. Add artifact analyst report destination example.
