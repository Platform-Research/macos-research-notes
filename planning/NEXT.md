# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/schemas/registry-personality-join.schema.json` was created in the `datasets/schemas/registry-personality-join` cycle.

## Current Recommendation

Continue by adding PCI ID decoding tests.

Reason: PCI joins are intentionally blocked until little-endian registry blobs can be normalized and tested.

## Next Branch

```text
tools/pci-id-decode
```

## Session Goal

Create the next experiment note:

```text
tools/pci-id-decode/README.md
```

## Research Question

What is the smallest tested decoder for PCI registry ID blobs?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Known input blob shapes from IORegistry.
- Expected normalized vendor, device, class, and revision values.
- A tiny decoder with tests.
- Boundaries for unsupported encodings.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiment: PCI inventory and registry-personality join.
- Existing tool: `tools/ioreg-inventory/`.
- Existing schemas: IORegistry inventory and registry-personality join.

## Definition Of Done

Done means:

- `tools/pci-id-decode/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Decoder behavior is tested without touching hardware.

## Follow-Up Queue

1. Add schema validation examples.
2. Add sample JSON fixtures for safe helper outputs.
3. Add candidate join fixture.
