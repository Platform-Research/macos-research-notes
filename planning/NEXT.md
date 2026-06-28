# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/artifact-analyst.md` now includes fixture validation guidance from the `ai/artifact-analyst-fixture-validation` cycle.

## Current Recommendation

Continue by adding release diff analyst report template reminder.

Reason: the release diff analyst links report guidance, but should explicitly use the release comparison template when producing reports.

## Next Branch

```text
ai/release-diff-analyst-template-reminder
```

## Session Goal

Update release diff analyst agent:

```text
ai/agents/release-diff-analyst.md
```

## Research Question

How should release diff analyst remember the report template?

## Target Output

A bounded agent update that captures:

- Template usage requirement.
- Report destination.
- Evidence table requirement.
- Unknowns and unresolved section.
- Validation result requirement.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/release-diff-analyst.md` requires the report template for reports.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add publisher validation result guidance.
2. Add research lead parking-lot evidence-gap guidance.
3. Add artifact analyst note-template fallback guidance.
