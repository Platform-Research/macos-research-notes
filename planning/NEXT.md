# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/examples/schema-validation/README.md` and JSON examples were created in the `datasets/examples/schema-validation` cycle.

## Current Recommendation

Continue by adding sample JSON fixtures for safe helper outputs.

Reason: static examples exist; the next step is to preserve generated safe outputs from the helpers as fixtures.

## Next Branch

```text
datasets/fixtures/helper-outputs
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/helper-outputs/README.md
```

## Research Question

What is the smallest set of generated safe helper-output fixtures?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- One generated IORegistry JSON fixture.
- One generated kext personality JSON fixture.
- Commands used to regenerate them.
- Redaction checks before commit.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing examples: schema validation examples.
- Existing tools: IORegistry inventory and kext personality inventory.
- Existing schemas: IORegistry inventory and kext personality inventory.

## Definition Of Done

Done means:

- `datasets/fixtures/helper-outputs/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Fixture JSON files parse cleanly with local tooling.

## Follow-Up Queue

1. Add candidate join fixture.
2. Integrate PCI decoder into IORegistry helper.
3. Add schema validation script.
