# Next Work

Use this file to choose the next focused session.

## Last Completed

`prompts/research/compare-releases.md` now links reports guidance and template files from the `prompts/compare-report-links` cycle.

## Current Recommendation

Continue by adding the release comparison template link to reports README.

Reason: the prompt links the report template, but `docs/reports/README.md` should also point to the copyable template.

## Next Branch

```text
docs/reports-template-link
```

## Session Goal

Update reports README:

```text
docs/reports/README.md
```

## Research Question

How should the reports README expose the release comparison template?

## Target Output

A bounded README update that captures:

- `docs/reports/release-comparison-template.md` link.
- Template purpose.
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

- `docs/reports/README.md` links `docs/reports/release-comparison-template.md`.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It keeps evidence and uncertainty requirements visible.

## Follow-Up Queue

1. Add report template references to workflow rules.
2. Add release diff analyst agent report guidance.
3. Add report template link to compare prompt checklist.
