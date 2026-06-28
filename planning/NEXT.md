# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/release-diff-analyst.md` now links report guidance and readiness rules from the `ai/release-diff-analyst-report-guidance` cycle.

## Current Recommendation

Continue by adding report template link to the compare prompt checklist.

Reason: the compare prompt links the template near the report skeleton, but the finish checklist should explicitly require template use for reports.

## Next Branch

```text
prompts/compare-checklist-template-link
```

## Session Goal

Update compare prompt:

```text
prompts/research/compare-releases.md
```

## Research Question

How should the compare prompt checklist require report template usage?

## Target Output

A bounded prompt update that captures:

- `docs/reports/release-comparison-template.md` link.
- Finish checklist item.
- Report/fixture boundary.
- Evidence paths.
- Unresolved records.
- Validation command remains visible.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `prompts/research/compare-releases.md` checklist requires the report template for reports.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add publisher agent report boundary guidance.
2. Add release diff analyst fixture reference guidance.
3. Add research lead report promotion guidance.
