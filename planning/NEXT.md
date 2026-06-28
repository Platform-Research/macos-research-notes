# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/release-diff-analyst.md` now includes destination examples for fixtures and reports from the `ai/release-diff-analyst-destination-examples` cycle.

## Current Recommendation

Continue by adding publisher report template reminder.

Reason: publisher knows report destinations, but should also explicitly remind authors to use the report template for report-shaped outputs.

## Next Branch

```text
ai/publisher-report-template-reminder
```

## Session Goal

Update publisher agent:

```text
ai/agents/publisher.md
```

## Research Question

How should publisher remind authors to use the report template?

## Target Output

A bounded agent update that captures:

- Report template reminder.
- Report destination.
- Evidence path requirement.
- Validation result reminder.
- Unresolved output boundary.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/publisher.md` explicitly reminds authors to use the report template for reports.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add research lead validation gate reminder.
2. Add artifact analyst unresolved example guidance.
3. Add publisher evidence-table reminder.
