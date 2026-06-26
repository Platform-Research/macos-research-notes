# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/ioreg-inventory/README.md` and `tools/ioreg-inventory/ioreg-inventory.sh` were created in the `tools/ioreg-inventory` cycle.

## Current Recommendation

Continue with the first registry inventory schema.

Reason: the helper now defines bounded outputs that need a stable schema before richer tooling is added.

## Next Branch

```text
datasets/schemas/ioreg-inventory
```

## Session Goal

Create the next experiment note:

```text
datasets/schemas/ioreg-inventory.schema.json
```

## Research Question

What is the smallest schema for safe IORegistry inventory records?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Record kinds supported by the schema.
- Required source command and redaction metadata.
- PCI and user-client inventory fields.
- What remains intentionally out of scope for later schemas.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiments: registry dump, PCI inventory, user-client inventory.
- Existing tool: `tools/ioreg-inventory/`.
- Existing notes: `IORegistry`, `IOPCIDevice`, `IOUserClient`.

## Definition Of Done

Done means:

- `datasets/schemas/ioreg-inventory.schema.json` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up kext personality tooling and schemas are listed.

## Follow-Up Queue

1. `tools/kext-personality-inventory/`
2. `datasets/schemas/kext-personality.schema.json`
