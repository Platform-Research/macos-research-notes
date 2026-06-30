# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/artifact-analyst.md` now includes a validation example from the `ai/artifact-analyst-validation-example` cycle.

## Current Recommendation

Continue by adding a release diff analyst missing-artifact fixture reminder.

Reason: the release diff analyst already supports unresolved outputs, but an explicit missing-artifact fixture reminder will reduce the chance of inventing symmetry across releases.

## Next Branch

```text
ai/release-diff-analyst-missing-artifact-fixture-reminder
```

## Session Goal

Update release diff analyst agent:

```text
ai/agents/release-diff-analyst.md
```

## Research Question

How should release diff analyst handle missing-artifact fixtures?

## Target Output

A bounded agent update that captures:

- Missing-artifact fixture reminder.
- Coverage-gap consistency.
- Workflow alignment.
- No unsupported release claims.
- Existing validation expectations remain intact.

## Evidence To Collect

- Existing release diff analyst instructions.
- Existing workflow rules.
- Existing missing-artifact examples.
- Existing note and report guidance.

## Definition Of Done

Done means:

- `ai/agents/release-diff-analyst.md` includes a missing-artifact fixture reminder.
- It keeps coverage gaps easier to represent honestly.
- No unsupported release claims are made.
- It keeps validation and unresolved handling intact.

## Follow-Up Queue

1. Add publisher fixture title example.
2. Add research lead validation command example.
3. Add artifact analyst follow-up branch example.
