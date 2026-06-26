# Next Work

Use this file to choose the next focused session.

## Last Completed

`experiments/iokit-registry-dump/README.md` was created in the `experiments/iokit-registry-dump` cycle.

## Current Recommendation

Continue with a bounded PCI inventory experiment.

Reason: `IOPCIDevice` is the first concrete provider class worth inventorying, but the registry-dump experiment showed that property allowlists must come before storing output.

## Next Branch

```text
experiments/pci-device-inventory
```

## Session Goal

Create the next experiment note:

```text
experiments/pci-device-inventory/README.md
```

## Research Question

What is the smallest safe read-only inventory for `IOPCIDevice` entries?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- PCI properties allowed for collection.
- PCI properties to avoid or redact.
- A tiny summary of observed classes/properties, not a raw dump.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Read-only `ioreg` commands targeting `IOPCIDevice`.
- Existing notes: `IORegistry`, `IOPCIDevice`, `kext-personalities`.
- A PCI property allowlist.

## Definition Of Done

Done means:

- `experiments/pci-device-inventory/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up experiments are listed for user-client inventory and kext personality extraction.

## Follow-Up Queue

1. `experiments/user-client-inventory/`
2. `experiments/kext-personality-extraction/`
3. `tools/ioreg-inventory/`
4. `datasets/schemas/ioreg-inventory.schema.json`
5. `tools/kext-personality-inventory/`
