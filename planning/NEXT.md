# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/kext-personality-inventory/README.md` and `tools/kext-personality-inventory/kext-personality-inventory.sh` were updated with JSON output in the `tools/kext-personality-inventory-json` cycle.

## Current Recommendation

Continue by adding the first join schema.

Reason: both inventory helpers now have bounded JSON outputs, so candidate joins can get a small schema.

## Next Branch

```text
datasets/schemas/registry-personality-join
```

## Session Goal

Create the next experiment note:

```text
datasets/schemas/registry-personality-join.schema.json
```

## Research Question

What is the smallest schema for candidate registry-to-personality joins?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Candidate edge fields.
- Confidence and reason fields.
- Required unresolved-state handling.
- Source references to both input records.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiment: registry-personality join.
- Existing tools: `tools/ioreg-inventory/`, `tools/kext-personality-inventory/`.
- Existing schemas: IORegistry inventory and kext personality inventory.

## Definition Of Done

Done means:

- `datasets/schemas/registry-personality-join.schema.json` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The schema records candidate, unresolved, and rejected join states.

## Follow-Up Queue

1. Add PCI ID decoding tests.
2. Add schema validation examples.
3. Add sample JSON fixtures for safe helper outputs.
