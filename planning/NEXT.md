# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/pci-id-decode/README.md`, `tools/pci-id-decode/pci_id_decode.py`, and tests were created in the `tools/pci-id-decode` cycle.

## Current Recommendation

Continue by adding schema validation examples.

Reason: the core schemas now exist and need small valid examples that future tools can validate against.

## Next Branch

```text
datasets/examples/schema-validation
```

## Session Goal

Create the next experiment note:

```text
datasets/examples/schema-validation/README.md
```

## Research Question

What is the smallest set of schema validation examples for current inventory records?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- One valid IORegistry inventory example.
- One valid kext personality example.
- One valid registry-personality join example.
- Commands to validate JSON syntax locally.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing schemas: IORegistry inventory, kext personality inventory, registry-personality join.
- Existing tools: IORegistry inventory, kext personality inventory, PCI ID decoder.

## Definition Of Done

Done means:

- `datasets/examples/schema-validation/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Example JSON files parse cleanly with local tooling.

## Follow-Up Queue

1. Add sample JSON fixtures for safe helper outputs.
2. Add candidate join fixture.
3. Integrate PCI decoder into IORegistry helper.
