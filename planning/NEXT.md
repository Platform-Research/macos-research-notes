# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/16.0/README.md` was created in the `macos/16.0-metadata-stub` cycle.

## Current Recommendation

Continue by adding generated release diff validation pair.

Reason: generated release diff fixtures exist, but optional validation does not yet cover them.

## Next Branch

```text
tools/validate-generated-release-diff
```

## Session Goal

Create the next experiment note:

```text
tools/schema-validate/README.md
```

## Research Question

What is the smallest validation update for generated release diff fixtures?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Add generated release diff fixture to known schema validation.
- Run optional jsonschema validation.
- Document coverage.
- Keep prototype boundary clear.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release diff schema and generated fixture.
- Existing optional schema validator.
- Existing release diff prototype.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` documents generated release diff validation.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Optional validator passes locally.

## Follow-Up Queue

1. Add release diff prototype validation pair.
2. Add release acquisition manifest validation to README.
3. Add macOS 15.6 artifact index stub.
