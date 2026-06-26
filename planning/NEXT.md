# Next Work

Use this file to choose the next focused session.

## Last Completed

`experiments/pci-device-inventory/README.md` was created in the `experiments/pci-device-inventory` cycle.

## Current Recommendation

Continue with a bounded user-client inventory experiment.

Reason: user clients expose user-space access surfaces, and the earlier `IOUserClient` note showed that inventories need strict redaction before storing any output.

## Next Branch

```text
experiments/user-client-inventory
```

## Session Goal

Create the next experiment note:

```text
experiments/user-client-inventory/README.md
```

## Research Question

What is the smallest safe read-only inventory for user-client classes and flags?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- User-client properties allowed for collection.
- User-client properties to avoid or redact.
- A tiny summary of observed classes/flags, not a raw dump.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Read-only `ioreg` commands targeting `IOUserClient`.
- Existing notes: `IORegistry`, `IOUserClient`, `kext-personalities`.
- A user-client property allowlist.

## Definition Of Done

Done means:

- `experiments/user-client-inventory/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up experiments are listed for kext personality extraction and registry tooling.

## Follow-Up Queue

1. `experiments/kext-personality-extraction/`
2. `tools/ioreg-inventory/`
3. `datasets/schemas/ioreg-inventory.schema.json`
4. `tools/kext-personality-inventory/`
5. `datasets/schemas/kext-personality.schema.json`
