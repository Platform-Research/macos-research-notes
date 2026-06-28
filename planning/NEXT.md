# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/research-lead.md` now includes a release readiness checklist from the `ai/research-lead-release-readiness-checklist` cycle.

## Current Recommendation

Continue by adding artifact analyst fixture validation guidance.

Reason: artifact analyst requires report evidence, but should also know when generated fixtures require schema validation.

## Next Branch

```text
ai/artifact-analyst-fixture-validation
```

## Session Goal

Update artifact analyst agent:

```text
ai/agents/artifact-analyst.md
```

## Research Question

How should artifact analyst validate structured fixtures?

## Target Output

A bounded agent update that captures:

- Schema validation command.
- Syntax validation command.
- Fixture destination.
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

- `ai/agents/artifact-analyst.md` includes fixture validation guidance.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add release diff analyst report template reminder.
2. Add publisher validation result guidance.
3. Add research lead parking-lot evidence-gap guidance.
