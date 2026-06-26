# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/kext-personality-inventory/README.md` and `tools/kext-personality-inventory/kext-personality-inventory.sh` were updated with PCI match parsing in the `tools/kext-personality-pci-match-parse` cycle.

## Current Recommendation

Continue by adding an optional JSON Schema validator after dependency decision.

Reason: JSON Schema validation was previously blocked by missing `jsonschema`; downloading is now allowed by the user.

## Next Branch

```text
tools/jsonschema-validator
```

## Session Goal

Create the next experiment note:

```text
tools/schema-validate/README.md
```

## Research Question

What is the smallest optional JSON Schema validator integration?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Dependency installation note.
- Validator script or mode.
- Validation commands for examples and fixtures.
- Clear optional/offline behavior.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing policy: JSON Schema validation.
- Existing tool: syntax validator.
- Existing schemas, examples, and fixtures.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` documents optional schema validation.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Validator smoke check passes or dependency install is documented.

## Follow-Up Queue

1. Add provider-class join fixture.
2. Add release-specific metadata index.
3. Add helper-output fixture with parsed PCI match tokens.
