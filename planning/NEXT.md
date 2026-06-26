# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/validate-known-schemas.py` was updated to validate release diff fixtures in the `tools/validate-release-diff` cycle.

## Current Recommendation

Continue by adding the first generated release diff prototype.

Reason: release diff schemas and fixtures exist; a tiny generator can now produce unresolved diff output from known inputs.

## Next Branch

```text
tools/release-diff-prototype
```

## Session Goal

Create the next experiment note:

```text
tools/release-diff/README.md
```

## Research Question

What is the smallest generated release diff prototype?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Inputs and output shape.
- A tiny generator for unresolved metadata-only diffs.
- Smoke check with placeholder release folders.
- Boundaries around unsupported release claims.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release diff schema and fixture.
- Existing macOS release folders.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `tools/release-diff/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Generated output parses locally.

## Follow-Up Queue

1. Add release acquisition manifest schema.
2. Add macOS 15.6 metadata stub.
3. Add generated release diff fixture.
