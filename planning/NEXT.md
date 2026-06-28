# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/workflow-rules.md` now links report guidance and templates from the `docs/workflow-report-template-reference` cycle.

## Current Recommendation

Continue by adding release diff analyst agent report guidance.

Reason: report templates are now documented, but the release diff analyst agent should also follow the same output and uncertainty rules.

## Next Branch

```text
ai/release-diff-analyst-report-guidance
```

## Session Goal

Update release diff analyst agent:

```text
ai/agents/release-diff-analyst.md
```

## Research Question

How should the release diff analyst agent produce reports safely?

## Target Output

A bounded agent update that captures:

- `docs/reports/README.md` link.
- `docs/reports/release-comparison-template.md` link.
- `docs/guidelines/release-diff-input-readiness.md` link.
- Unresolved state handling.
- Evidence paths.
- No unsupported claims.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/release-diff-analyst.md` links report guidance and release diff readiness.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- The agent requires evidence paths and unresolved states for missing inputs.

## Follow-Up Queue

1. Add report template link to compare prompt checklist.
2. Add publisher agent report boundary guidance.
3. Add release diff analyst fixture reference guidance.
