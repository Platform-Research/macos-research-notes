# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/release-provenance-template.md` was created in the `docs/release-provenance-template` cycle.

## Current Recommendation

Continue by adding a provider-class join fixture validation pair.

Reason: provider-class join fixtures exist, but optional schema validation does not yet cover them.

## Next Branch

```text
tools/validate-provider-class-fixture
```

## Session Goal

Create the next experiment note:

```text
tools/schema-validate/README.md
```

## Research Question

What is the smallest validation update for provider-class join fixtures?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Add provider-class fixture to known schema validation.
- Run optional jsonschema validation.
- Document the added coverage.
- Keep syntax-only baseline unchanged.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing provider-class join fixture.
- Existing registry-personality join schema.
- Existing optional schema validator.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` documents provider-class fixture coverage.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Optional validator passes locally.

## Follow-Up Queue

1. Add requirements-dev.txt after adoption decision.
2. Add macOS release diff planning note.
3. Add artifact provenance to macOS 26.5.1 index.
