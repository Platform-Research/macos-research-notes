# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/schemas/kext-personality.schema.json` was created in the `datasets/schemas/kext-personality` cycle.

## Current Recommendation

Continue with the first registry-to-personality join experiment.

Reason: the registry and personality sides now have notes, helpers, and schemas, so the next step is to define how they should be joined safely.

## Next Branch

```text
experiments/registry-personality-join
```

## Session Goal

Create the next experiment note:

```text
experiments/registry-personality-join/README.md
```

## Research Question

What is the smallest safe join between IORegistry inventory and kext personality records?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Join keys worth testing first.
- Inputs from the two schemas.
- Cases that must stay unresolved instead of guessed.
- What evidence is needed before automating joins.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiments: PCI inventory, user-client inventory, kext personality extraction.
- Existing tools: `tools/ioreg-inventory/`, `tools/kext-personality-inventory/`.
- Existing schemas: IORegistry inventory and kext personality inventory.

## Definition Of Done

Done means:

- `experiments/registry-personality-join/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The next planning step is explicit after this experiment.

## Follow-Up Queue

1. Implement structured JSON output for `tools/ioreg-inventory/`.
2. Implement structured JSON output for `tools/kext-personality-inventory/`.
3. Add a join schema after sample records exist.
