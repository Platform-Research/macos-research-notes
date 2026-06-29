# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/research-lead.md` now distinguishes fixture, report, and evidence-gap branching from the `ai/research-lead-branching-cue` cycle.

## Current Recommendation

Continue by adding publisher fixture validation example.

Reason: publisher preserves validation commands in general, but a fixture-shaped example would make that rule easier to apply.

## Next Branch

```text
ai/publisher-fixture-validation-example
```

## Session Goal

Update publisher agent:

```text
ai/agents/publisher.md
```

## Research Question

How should publisher describe fixture validation?

## Target Output

A bounded agent update that captures:

- Fixture example.
- Validation commands.
- Validation result reminder.
- Evidence path reminder.
- Report/fixture boundary.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/publisher.md` includes a fixture validation example.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add artifact analyst report destination example.
2. Add release diff analyst branch naming example.
3. Add publisher knowledge-promotion reminder.
