# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/kext-personality-inventory/README.md` and `tools/kext-personality-inventory/kext-personality-inventory.sh` were created in the `tools/kext-personality-inventory` cycle.

## Current Recommendation

Continue with the kext personality inventory schema.

Reason: the personality helper now defines safe bounded outputs that need a stable record contract.

## Next Branch

```text
datasets/schemas/kext-personality
```

## Session Goal

Create the next experiment note:

```text
datasets/schemas/kext-personality.schema.json
```

## Research Question

What is the smallest schema for safe kext and dext personality records?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Record fields supported by the schema.
- Required source path and bundle metadata.
- Generic matching keys and bounded family-specific fields.
- Redaction metadata for user-client and entitlement-related values.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiment: kext personality extraction.
- Existing tool: `tools/kext-personality-inventory/`.
- Existing notes: `kext-personalities`, `IOPCIDevice`, `IOUserClient`.

## Definition Of Done

Done means:

- `datasets/schemas/kext-personality.schema.json` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The next planning step is explicit after this schema.

## Follow-Up Queue

1. Define first registry-to-personality join experiment.
2. Implement structured JSON output for `tools/ioreg-inventory/`.
3. Implement structured JSON output for `tools/kext-personality-inventory/`.
