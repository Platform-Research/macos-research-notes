# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/reports/release-comparison-template.md` was created in the `docs/release-comparison-report-template` cycle.

## Current Recommendation

Continue by adding report destination links to the compare prompt.

Reason: the report template exists, but the reusable compare prompt should point directly to reports guidance and the template.

## Next Branch

```text
prompts/compare-report-links
```

## Session Goal

Update compare prompt:

```text
prompts/research/compare-releases.md
```

## Research Question

How should the compare prompt link report guidance and templates?

## Target Output

A bounded prompt update that captures:

- `docs/reports/README.md` link.
- `docs/reports/release-comparison-template.md` link.
- Report destination guidance.
- Fixture/report boundary.
- Evidence requirement.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `prompts/research/compare-releases.md` links reports README and release comparison template.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add release comparison template link to reports README.
2. Add report template references to workflow rules.
3. Add release diff analyst agent report guidance.
