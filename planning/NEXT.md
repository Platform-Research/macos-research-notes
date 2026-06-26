# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/26.5.1/artifacts.md` was created in the `macos/26.5.1-artifact-index` cycle.

## Current Recommendation

Continue by adding a release provenance template.

Reason: release acquisition rules define required provenance fields, but there is no reusable template yet.

## Next Branch

```text
docs/release-provenance-template
```

## Session Goal

Create the next experiment note:

```text
docs/guidelines/release-provenance-template.md
```

## Research Question

What is the smallest reusable release provenance template?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Source command or path.
- Date and host context.
- Redaction policy.
- Raw/reduced/derived status.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release acquisition rules.
- Existing workflow rules.
- Existing macOS metadata index.

## Definition Of Done

Done means:

- `docs/guidelines/release-provenance-template.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Template can be copied into release notes.

## Follow-Up Queue

1. Add provider-class join fixture validation pair.
2. Add requirements-dev.txt after adoption decision.
3. Add macOS release diff planning note.
