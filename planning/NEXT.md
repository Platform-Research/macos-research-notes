# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/validate-known-schemas.py` was updated to validate generated release diff fixtures in the `tools/validate-generated-release-diff` cycle.

## Current Recommendation

Continue by adding release diff prototype validation pair.

Reason: release diff generated fixtures are validated, but the prototype command itself still lacks a documented validation path.

## Next Branch

```text
tools/release-diff-validation-doc
```

## Session Goal

Create the next experiment note:

```text
tools/release-diff/README.md
```

## Research Question

What is the smallest validation note for the release diff prototype?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Syntax validation command.
- Optional schema validation path.
- Regeneration command for fixture.
- Prototype boundary.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release diff prototype.
- Existing release diff schema and fixtures.
- Existing validators.

## Definition Of Done

Done means:

- `tools/release-diff/README.md` documents validation.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Validation commands pass locally.

## Follow-Up Queue

1. Add release acquisition manifest validation to README.
2. Add macOS 15.6 artifact index stub.
3. Add macOS 16.0 artifact index stub.
