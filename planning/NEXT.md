# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/publisher.md` now explicitly reminds authors to use the report template from the `ai/publisher-report-template-reminder` cycle.

## Current Recommendation

Continue by adding research lead validation gate reminder.

Reason: research lead checks readiness, but should also remind sessions to carry validation gates into the done definition.

## Next Branch

```text
ai/research-lead-validation-gate-reminder
```

## Session Goal

Update research lead agent:

```text
ai/agents/research-lead.md
```

## Research Question

How should research lead enforce validation gates?

## Target Output

A bounded agent update that captures:

- Validation command reminder.
- Done-definition reminder.
- Readiness gate reminder.
- Evidence path requirement.
- Unresolved output boundary.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/research-lead.md` reminds sessions to include validation gates in the completion definition.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add artifact analyst unresolved example guidance.
2. Add publisher evidence-table reminder.
3. Add release diff analyst report path example.
