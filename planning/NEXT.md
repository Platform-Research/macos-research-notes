# Next Work

Use this file to choose the next focused session.

## Last Completed

`knowledge/iokit/IORegistry.md` was created in the `knowledge/iokit-ioregistry` cycle.

## Current Recommendation

Continue the IOKit foundation track with PCI device matching.

Reason: `IOPCIDevice` is the concrete provider class that makes device-id, vendor-id, PCI matching, and many unsupported-hardware questions less abstract.

## Next Branch

```text
knowledge/iokit-iopcidevice
```

## Session Goal

Create the next atomic knowledge note:

```text
knowledge/iokit/IOPCIDevice.md
```

## Research Question

How does `IOPCIDevice` represent PCI providers and participate in driver matching?

## Target Output

A small note using `docs/guidelines/note-template.md` that captures:

- What `IOPCIDevice` is.
- Which PCI identity and matching properties matter.
- How `IOProviderClass`, `IOPCIMatch`, vendor ID, and device ID relate.
- How a read-only `ioreg` query can inspect PCI services.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- Local SDK/header references for `IOPCIDevice`.
- Apple matching documentation for PCI personalities.
- Read-only `ioreg` output for `IOPCIDevice`.
- Links back to `knowledge/iokit/IOService.md` and `knowledge/iokit/IORegistry.md`.

## Definition Of Done

Done means:

- `knowledge/iokit/IOPCIDevice.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up experiments are listed for PCI inventory and kext personality extraction.

## Follow-Up Queue

1. `knowledge/iokit/IOUserClient.md`
2. `knowledge/iokit/kext-personalities.md`
3. `experiments/iokit-registry-dump/`
4. `experiments/pci-device-inventory/`
5. `tools/ioreg-inventory/`
