# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/artifact-analyst.md` now explains fallback to small notes from the `ai/artifact-analyst-note-template-fallback` cycle.

## Current Recommendation

Continue by adding release diff analyst validation result reminder.

Reason: release diff analyst validates fixtures, but should explicitly carry validation results into reports.

## Next Branch

```text
ai/release-diff-analyst-validation-results
```

## Session Goal

Update release diff analyst agent:

```text
ai/agents/release-diff-analyst.md
```

## Research Question

How should release diff analyst preserve validation results?

## Target Output

A bounded agent update that captures:

- Validation command.
- Validation result.
- Report template validation section.
- Fixture changed condition.
- Unknowns remain explicit.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/release-diff-analyst.md` requires validation results in reports when fixtures change.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add publisher validation command examples.
2. Add research lead evidence-gap parking lot template.
3. Add artifact analyst command provenance reminder.
