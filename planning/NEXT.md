# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/release-diff-analyst.md` now requires validation results in reports when fixtures or schemas change from the `ai/release-diff-analyst-validation-results` cycle.

## Current Recommendation

Continue by adding publisher validation command examples.

Reason: publisher now preserves validation results, but concrete commands make the rule easier to apply.

## Next Branch

```text
ai/publisher-validation-command-examples
```

## Session Goal

Update publisher agent:

```text
ai/agents/publisher.md
```

## Research Question

What validation command examples should publisher preserve?

## Target Output

A bounded agent update that captures:

- JSON syntax command.
- Known schema validation command.
- Report validation section.
- Fixture/schema changed condition.
- Evidence path reminder.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/publisher.md` includes validation command examples.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add research lead evidence-gap parking lot template.
2. Add artifact analyst command provenance reminder.
3. Add release diff analyst report destination examples.
