# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/README.md`, `tools/schema-validate/validate-known-schemas.py`, and `.gitignore` were updated in the `tools/jsonschema-validator` cycle.

## Current Recommendation

Continue by adding a provider-class join fixture.

Reason: the provider-class join helper exists and needs a small committed fixture for review and smoke tests.

## Next Branch

```text
datasets/fixtures/provider-class-join
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/provider-class-join/README.md
```

## Research Question

What is the smallest provider-class join fixture?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- One reduced topology input.
- One reduced personality input.
- One provider-class join output.
- Smoke commands to regenerate and parse.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing tools: topology JSON, personality JSON, provider-class join.
- Existing schemas: IORegistry, kext personality, registry-personality join.
- Existing fixtures: topology JSON and helper outputs.

## Definition Of Done

Done means:

- `datasets/fixtures/provider-class-join/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Fixture JSON parses locally.

## Follow-Up Queue

1. Add release-specific metadata index.
2. Add helper-output fixture with parsed PCI match tokens.
3. Add optional dependency lock strategy.
