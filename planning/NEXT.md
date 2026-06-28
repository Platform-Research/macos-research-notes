# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/research-lead.md` now explains report-to-knowledge promotion criteria from the `ai/research-lead-report-promotion` cycle.

## Current Recommendation

Continue by adding artifact analyst report evidence guidance.

Reason: the artifact analyst should also require evidence paths and avoid converting artifact gaps into conclusions.

## Next Branch

```text
ai/artifact-analyst-report-evidence
```

## Session Goal

Update artifact analyst agent:

```text
ai/agents/artifact-analyst.md
```

## Research Question

How should the artifact analyst cite evidence in reports?

## Target Output

A bounded agent update that captures:

- `docs/reports/README.md` link.
- Evidence path requirement.
- Unknowns and unresolved artifact gaps.
- Fixture/report boundary.
- No unsupported claims.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/artifact-analyst.md` requires committed evidence paths for report claims.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add publisher fixture boundary examples.
2. Add research lead release-readiness checklist.
3. Add artifact analyst fixture validation guidance.
