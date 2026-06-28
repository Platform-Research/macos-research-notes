# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/publisher.md` now distinguishes reports, fixtures, and knowledge promotion from the `ai/publisher-report-boundary-guidance` cycle.

## Current Recommendation

Continue by adding release diff analyst fixture reference guidance.

Reason: the release diff analyst now handles reports safely, but it should also point directly to fixture examples and schema validation.

## Next Branch

```text
ai/release-diff-analyst-fixture-guidance
```

## Session Goal

Update release diff analyst agent:

```text
ai/agents/release-diff-analyst.md
```

## Research Question

How should the release diff analyst use fixture examples safely?

## Target Output

A bounded agent update that captures:

- Fixture README path.
- Missing-artifact fixture path.
- Generated fixture path.
- Schema validation command.
- Unresolved records.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/release-diff-analyst.md` links release diff fixture examples.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add research lead report promotion guidance.
2. Add artifact analyst report evidence guidance.
3. Add publisher fixture boundary examples.
