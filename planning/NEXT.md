# Next Work

Use this file to choose the next focused session.

## Last Completed

`experiments/registry-personality-join/README.md` was created in the `experiments/registry-personality-join` cycle.

## Current Recommendation

Continue by adding structured JSON output to the IORegistry inventory helper.

Reason: the join experiment should not be automated until both sides can produce bounded structured records.

## Next Branch

```text
tools/ioreg-inventory-json
```

## Session Goal

Create the next experiment note:

```text
tools/ioreg-inventory/README.md
```

## Research Question

What is the smallest JSON output mode for safe IORegistry inventory records?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- JSON modes to add.
- How output maps to `datasets/schemas/ioreg-inventory.schema.json`.
- Redaction metadata included in every output.
- What remains intentionally text-only.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiments: registry dump, PCI inventory, user-client inventory, registry-personality join.
- Existing tool: `tools/ioreg-inventory/`.
- Existing schema: `datasets/schemas/ioreg-inventory.schema.json`.

## Definition Of Done

Done means:

- `tools/ioreg-inventory/README.md` documents JSON output.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The helper emits at least one bounded JSON mode.

## Follow-Up Queue

1. Implement structured JSON output for `tools/kext-personality-inventory/`.
2. Add a join schema after sample records exist.
3. Add PCI ID decoding tests.
