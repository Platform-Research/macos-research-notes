# Next Work

Use this file to choose the next focused session.

## Last Completed

`knowledge/iokit/kext-personalities.md` was created in the `knowledge/iokit-kext-personalities` cycle.

## Current Recommendation

Start the first bounded experiment: read-only I/O Registry dump.

Reason: the knowledge notes now need a reproducible, safe experiment that captures a tiny registry sample and defines redaction rules before larger inventories.

## Next Branch

```text
experiments/iokit-registry-dump
```

## Session Goal

Create the first experiment note:

```text
experiments/iokit-registry-dump/README.md
```

## Research Question

What is the smallest safe read-only `ioreg` workflow for capturing provider/client topology without committing sensitive local data?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- What output is safe to store.
- What output must be redacted.
- A tiny example summary, not a raw machine dump.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Read-only `ioreg` commands.
- Existing notes: `IOService`, `IORegistry`, `IOPCIDevice`, `IOUserClient`.
- A proposed redaction policy.

## Definition Of Done

Done means:

- `experiments/iokit-registry-dump/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up experiments are listed for PCI and user-client inventory.

## Follow-Up Queue

1. `experiments/pci-device-inventory/`
2. `experiments/user-client-inventory/`
3. `experiments/kext-personality-extraction/`
4. `tools/ioreg-inventory/`
5. `datasets/schemas/ioreg-inventory.schema.json`
