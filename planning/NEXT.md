# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/research-lead.md` now includes a report title example from the `ai/research-lead-report-title-example` cycle.

## Current Recommendation

Continue by adding an artifact analyst unresolved fixture reminder.

Reason: the artifact analyst already marks unresolved comparisons, but it should also explicitly keep unresolved structured outputs in fixtures instead of letting them drift into conclusions.

## Next Branch

```text
ai/artifact-analyst-unresolved-fixture-reminder
```

## Session Goal

Update artifact analyst agent:

```text
ai/agents/artifact-analyst.md
```

## Research Question

How should artifact analyst handle unresolved fixtures?

## Target Output

A bounded agent update that captures:

- Unresolved fixture reminder.
- Structured uncertainty preservation.
- Workflow alignment.
- No unsupported artifact claims.
- Existing validation expectations remain intact.

## Evidence To Collect

- Existing artifact analyst instructions.
- Existing workflow rules.
- Existing unresolved examples.
- Existing fixture guidance.

## Definition Of Done

Done means:

- `ai/agents/artifact-analyst.md` includes an unresolved fixture reminder.
- It keeps unresolved structured outputs separate from conclusions.
- No unsupported artifact claims are made.
- It keeps validation and unresolved handling intact.

## Follow-Up Queue

1. Add release diff analyst validation example reminder.
2. Add publisher follow-up branch reminder.
3. Add research lead note title example.
