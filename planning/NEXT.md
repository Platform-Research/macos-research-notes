# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/release-diff-analyst.md` now includes a concrete release diff report path example from the `ai/release-diff-analyst-report-path-example` cycle.

## Current Recommendation

Continue by adding research lead fixture/report branching cue.

Reason: research lead governs output paths, and a direct branch cue between fixture and report work will reduce mixed-intent sessions.

## Next Branch

```text
ai/research-lead-branching-cue
```

## Session Goal

Update research lead agent:

```text
ai/agents/research-lead.md
```

## Research Question

How should research lead cue fixture versus report branching?

## Target Output

A bounded agent update that captures:

- Fixture branch cue.
- Report branch cue.
- Output path cue.
- Evidence gap branch cue.
- One branch, one intent reminder.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/research-lead.md` distinguishes fixture, report, and evidence-gap branching choices.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add publisher fixture validation example.
2. Add artifact analyst report destination example.
3. Add release diff analyst branch naming example.
