# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/release-diff-analyst.md` now links release diff fixture examples from the `ai/release-diff-analyst-fixture-guidance` cycle.

## Current Recommendation

Continue by adding research lead report promotion guidance.

Reason: report and fixture boundaries now appear in specialist agents, but the research lead should govern when reports are promoted to knowledge.

## Next Branch

```text
ai/research-lead-report-promotion
```

## Session Goal

Update research lead agent:

```text
ai/agents/research-lead.md
```

## Research Question

How should the research lead decide whether reports become knowledge?

## Target Output

A bounded agent update that captures:

- `docs/reports/README.md` link.
- Knowledge promotion boundary.
- Evidence path requirement.
- Unknowns stay in reports.
- No unsupported claims.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/research-lead.md` explains report-to-knowledge promotion criteria.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add artifact analyst report evidence guidance.
2. Add publisher fixture boundary examples.
3. Add research lead release-readiness checklist.
