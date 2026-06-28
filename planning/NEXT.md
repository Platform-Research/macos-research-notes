# Next Work

Use this file to choose the next focused session.

## Last Completed

`prompts/research/compare-releases.md` checklist now requires the release comparison report template from the `prompts/compare-checklist-template-link` cycle.

## Current Recommendation

Continue by adding publisher agent report boundary guidance.

Reason: reports and fixtures now have stronger boundaries, but the publisher agent should avoid promoting unresolved prototypes.

## Next Branch

```text
ai/publisher-report-boundary-guidance
```

## Session Goal

Update publisher agent:

```text
ai/agents/publisher.md
```

## Research Question

How should the publisher agent handle reports, fixtures, and unresolved outputs?

## Target Output

A bounded agent update that captures:

- `docs/reports/README.md` link.
- Fixtures stay under datasets.
- Reports require evidence paths.
- Unresolved records.
- Knowledge promotion boundary.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/publisher.md` distinguishes reports, fixtures, and knowledge promotion.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add release diff analyst fixture reference guidance.
2. Add research lead report promotion guidance.
3. Add artifact analyst report evidence guidance.
