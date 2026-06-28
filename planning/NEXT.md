# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/workflow-rules.md` now documents report filename and destination boundaries from the `docs/report-filename-convention` cycle.

## Current Recommendation

Continue by adding a release comparison report template file.

Reason: report naming and destination rules are now documented, but `docs/reports` still needs a copyable release comparison template.

## Next Branch

```text
docs/release-comparison-report-template
```

## Session Goal

Create report template:

```text
docs/reports/release-comparison-template.md
```

## Research Question

What reusable template should evidence-backed release comparison reports use?

## Target Output

A bounded report template that captures:

- Summary.
- Inputs.
- Evidence table.
- Diff records.
- Unknowns and unresolved items.
- Validation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `docs/reports/release-comparison-template.md` exists.
- It separates observations, inferences, unknowns, and follow-ups.
- No unsupported driver claims are made.
- It links release diff readiness guidance.

## Follow-Up Queue

1. Add report destination links to compare prompt.
2. Add docs/reports README link to compare prompt.
3. Add release comparison template link to reports README.
