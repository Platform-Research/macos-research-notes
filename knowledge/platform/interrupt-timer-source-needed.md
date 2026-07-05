# Interrupt and Timer Source Needed

## Summary

Interrupt and timer behavior is bridge-critical, but this repository does not yet have committed source material or reduced artifacts that support detailed claims. For now, interrupt and timer work should be tracked as source-needed prerequisite research.

## Context

- Bridge focus: `knowledge/platform/arm-bridge-readiness.md`
- SoC dependency map: `knowledge/platform/arm-soc-dependency-map.md`
- Controller prerequisites: `knowledge/platform/arm-controller-prerequisites.md`
- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- PCI device note: `knowledge/iokit/IOPCIDevice.md`
- PCI inventory experiment: `experiments/pci-device-inventory/README.md`

## Why This Matters

A future bridge may need to understand:

- how platform timers are represented to the kernel;
- how device interrupts are named, routed, or exposed;
- how IORegistry interrupt metadata relates to IOKit providers;
- which interrupt facts are controller-specific versus platform-wide;
- which fields are safe to record without raw property dumps.

## Current Evidence

- `experiments/pci-device-inventory/README.md` names `IOInterruptSpecifiers` and `IOInterruptControllers` as properties observed in PCI inventory context.
- `IOPCIDevice.md` records runtime PCI entries exposing `IOInterruptControllers`.
- `ioreg-inventory.sh` omits `IOInterruptSpecifiers` in topology-only output.
- `arm-controller-prerequisites.md` keeps interrupts and timers behind public references or source-needed notes.

## Safe Questions

- Which public XNU or Apple documentation references should be collected first?
- Which reduced registry fields can identify interrupt metadata without raw blobs?
- Which controller families expose interrupt-related metadata in reduced fixtures?
- Which timer concepts belong to kernel core versus platform services?
- Which claims require runtime evidence instead of metadata?

## Stop Lines

Stop before:

- committing raw interrupt specifier blobs;
- decoding target-specific interrupt controller data without a schema;
- treating interrupt metadata as proof that a device works;
- writing emulation or routing guidance without source-backed behavior.

## Unknowns

- No interrupt or timer source note exists.
- No redaction policy exists for interrupt metadata.
- No normalized interrupt fixture exists.
- The bridge relevance of specific interrupt controller names is unknown.

## Next Work

- Create a public-reference acquisition list for XNU interrupt and timer concepts.
- Decide whether interrupt metadata belongs in a future registry schema extension.
- Keep interrupt examples out of committed fixtures until redaction is defined.

## Sources

- `knowledge/platform/arm-bridge-readiness.md`
- `knowledge/platform/arm-soc-dependency-map.md`
- `knowledge/platform/arm-controller-prerequisites.md`
- `knowledge/platform/macos-kernel-layer-map.md`
- `knowledge/iokit/IOPCIDevice.md`
- `experiments/pci-device-inventory/README.md`
- `tools/ioreg-inventory/ioreg-inventory.sh`
