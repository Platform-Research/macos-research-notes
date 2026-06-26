# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/provider-class-join/README.md` and `tools/provider-class-join/provider_class_join.py` were created in the `tools/provider-class-join` cycle.

## Current Recommendation

Continue by adding a topology fixture from `topology-json`.

Reason: topology JSON is now available and provider-class joins need a small committed fixture for smoke checks.

## Next Branch

```text
datasets/fixtures/topology-json
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/topology-json/README.md
```

## Research Question

What is the smallest safe topology JSON fixture?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Reduced topology JSON output.
- Regeneration command.
- Redaction checks.
- Use in provider-class join smoke tests.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing tool: IORegistry inventory and provider-class join.
- Existing schema: IORegistry inventory.
- Existing experiment: registry ancestor capture.

## Definition Of Done

Done means:

- `datasets/fixtures/topology-json/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Fixture JSON parses locally.

## Follow-Up Queue

1. Integrate PCI match parser into personality helper.
2. Add optional JSON Schema validator after dependency decision.
3. Add provider-class join fixture.
