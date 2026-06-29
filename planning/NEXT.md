# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/artifact-analyst.md` now includes a note destination example from the `ai/artifact-analyst-note-destination-example` cycle.

## Current Recommendation

Continue by adding a release diff analyst unresolved example.

Reason: the release diff analyst already supports unresolved outputs, but a concrete unresolved example will keep blocked comparisons honest and repeatable.

## Next Branch

```text
ai/release-diff-analyst-unresolved-example
```

## Session Goal

Update release diff analyst agent:

```text
ai/agents/release-diff-analyst.md
```

## Research Question

How should release diff analyst show unresolved comparisons?

## Target Output

A bounded agent update that captures:

- Unresolved example.
- Comparison gap handling.
- Workflow alignment.
- No unsupported release claims.
- Existing validation expectations remain intact.

## Evidence To Collect

- Existing release diff analyst instructions.
- Existing workflow rules.
- Existing missing-artifact fixture examples.
- Existing report template guidance.

## Definition Of Done

Done means:

- `ai/agents/release-diff-analyst.md` includes an unresolved example.
- It keeps unresolved comparisons clearly separated from supported conclusions.
- No unsupported release claims are made.
- It keeps validation and unresolved handling intact.

## Follow-Up Queue

1. Add publisher report title example.
2. Add research lead fixture naming example.
3. Add artifact analyst fixture title example.
