# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/research-lead.md` now reminds sessions to include validation gates in the completion definition from the `ai/research-lead-validation-gate-reminder` cycle.

## Current Recommendation

Continue by adding artifact analyst unresolved example guidance.

Reason: artifact analyst handles unknowns abstractly, but one explicit unresolved example would make the rule easier to apply.

## Next Branch

```text
ai/artifact-analyst-unresolved-example
```

## Session Goal

Update artifact analyst agent:

```text
ai/agents/artifact-analyst.md
```

## Research Question

How should artifact analyst describe unresolved examples?

## Target Output

A bounded agent update that captures:

- Missing artifact example.
- Unresolved wording.
- Observation versus inference.
- Follow-up branch.
- No unsupported claim.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/artifact-analyst.md` includes an unresolved example.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add publisher evidence-table reminder.
2. Add release diff analyst report path example.
3. Add research lead fixture/report branching cue.
