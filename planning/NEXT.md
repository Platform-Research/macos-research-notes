# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/ioreg-inventory/README.md` and `tools/ioreg-inventory/ioreg-inventory.sh` were updated with JSON output in the `tools/ioreg-inventory-json` cycle.

## Current Recommendation

Continue by adding structured JSON output to the kext personality inventory helper.

Reason: IORegistry now has a minimal JSON mode; personality records need the same before join automation.

## Next Branch

```text
tools/kext-personality-inventory-json
```

## Session Goal

Create the next experiment note:

```text
tools/kext-personality-inventory/README.md
```

## Research Question

What is the smallest JSON output mode for safe kext personality inventory records?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- JSON modes to add.
- How output maps to `datasets/schemas/kext-personality.schema.json`.
- Redaction metadata included in every output.
- What remains intentionally text-only.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiment: kext personality extraction and registry-personality join.
- Existing tool: `tools/kext-personality-inventory/`.
- Existing schema: `datasets/schemas/kext-personality.schema.json`.

## Definition Of Done

Done means:

- `tools/kext-personality-inventory/README.md` documents JSON output.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The helper emits at least one bounded JSON mode.

## Follow-Up Queue

1. Add a join schema after sample records exist.
2. Add PCI ID decoding tests.
3. Add schema validation examples.
