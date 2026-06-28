# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/artifact-analyst.md` now requires evidence paths for report claims from the `ai/artifact-analyst-report-evidence` cycle.

## Current Recommendation

Continue by adding publisher fixture boundary examples.

Reason: publisher has report boundaries, but examples would make fixture versus report placement easier to apply.

## Next Branch

```text
ai/publisher-fixture-boundary-examples
```

## Session Goal

Update publisher agent:

```text
ai/agents/publisher.md
```

## Research Question

How should publisher examples distinguish fixtures from reports?

## Target Output

A bounded agent update that captures:

- Fixture destination example.
- Report destination example.
- Knowledge destination example.
- Unresolved output example.
- Evidence path reminder.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/publisher.md` includes concrete destination examples.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add research lead release-readiness checklist.
2. Add artifact analyst fixture validation guidance.
3. Add release diff analyst report template reminder.
