# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/release-diff-analyst.md` now requires the release comparison report template from the `ai/release-diff-analyst-template-reminder` cycle.

## Current Recommendation

Continue by adding publisher validation result guidance.

Reason: publisher requires evidence paths, but should also preserve validation commands and results in reports when fixtures change.

## Next Branch

```text
ai/publisher-validation-result-guidance
```

## Session Goal

Update publisher agent:

```text
ai/agents/publisher.md
```

## Research Question

How should publisher preserve validation results?

## Target Output

A bounded agent update that captures:

- Validation command.
- Validation result.
- Fixture/report distinction.
- Evidence path requirement.
- Unknowns remain explicit.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/publisher.md` requires validation commands and results when fixtures or schemas change.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add research lead parking-lot evidence-gap guidance.
2. Add artifact analyst note-template fallback guidance.
3. Add release diff analyst validation result reminder.
