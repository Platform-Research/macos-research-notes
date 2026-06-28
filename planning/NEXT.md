# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/artifact-analyst.md` now requires command provenance for observations from the `ai/artifact-analyst-command-provenance` cycle.

## Current Recommendation

Continue by adding release diff analyst report destination examples.

Reason: release diff analyst distinguishes fixtures and reports, but concrete destination examples would make the output routing more repeatable.

## Next Branch

```text
ai/release-diff-analyst-destination-examples
```

## Session Goal

Update release diff analyst agent:

```text
ai/agents/release-diff-analyst.md
```

## Research Question

How should release diff analyst choose between fixtures and reports?

## Target Output

A bounded agent update that captures:

- Fixture destination example.
- Report destination example.
- Validation result location.
- Unresolved output example.
- Evidence path reminder.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/release-diff-analyst.md` includes destination examples for fixtures and reports.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add publisher report template reminder.
2. Add research lead validation gate reminder.
3. Add artifact analyst unresolved example guidance.
