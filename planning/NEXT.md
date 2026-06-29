# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/release-diff-analyst.md` now includes a branch naming example from the `ai/release-diff-analyst-branch-naming-example` cycle.

## Current Recommendation

Continue by adding a publisher knowledge-promotion reminder.

Reason: the publisher already distinguishes reports, fixtures, and knowledge, but it should also explicitly block premature promotion of unresolved findings into stable knowledge.

## Next Branch

```text
ai/publisher-knowledge-promotion-reminder
```

## Session Goal

Update publisher agent:

```text
ai/agents/publisher.md
```

## Research Question

How should publisher warn against premature knowledge promotion?

## Target Output

A bounded agent update that captures:

- Branch naming example.
- Knowledge promotion reminder.
- Report/knowledge boundary reinforcement.
- Workflow alignment.
- No unsupported stable claims.
- Existing validation expectations remain intact.

## Evidence To Collect

- Existing publisher instructions.
- Existing workflow rules.
- Existing knowledge and report boundaries.
- Existing report template guidance.

## Definition Of Done

Done means:

- `ai/agents/publisher.md` includes a knowledge-promotion reminder.
- It keeps reports and knowledge clearly separated.
- No unsupported stable claims are made.
- It keeps validation and unresolved handling intact.

## Follow-Up Queue

1. Add research lead report-promotion example.
2. Add artifact analyst note destination example.
3. Add release diff analyst unresolved example.
