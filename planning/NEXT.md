# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/release-diff/README.md` was updated with validation commands in the `tools/release-diff-validation-doc` cycle.

## Current Recommendation

Continue by adding release acquisition manifest validation to README.

Reason: acquisition manifest validation exists in the script, but the README should call out that coverage directly.

## Next Branch

```text
tools/acquisition-manifest-validation-doc
```

## Session Goal

Create the next experiment note:

```text
tools/schema-validate/README.md
```

## Research Question

What is the smallest documentation update for acquisition manifest validation?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Mention acquisition manifest schema pair.
- Keep optional validator command.
- Keep syntax baseline.
- Clarify coverage.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing acquisition manifest schema and fixture.
- Existing optional schema validator.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` documents acquisition manifest validation.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Optional validator passes locally.

## Follow-Up Queue

1. Add macOS 15.6 artifact index stub.
2. Add macOS 16.0 artifact index stub.
3. Add release acquisition manifest README.
