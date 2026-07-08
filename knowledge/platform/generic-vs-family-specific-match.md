# Generic vs Family Specific Match

## Summary

Generic matching fields such as `IOProviderClass` identify the broad provider surface. Family-specific keys, such as PCI match strings, refine that surface with device-family identity.

## Context

- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related parser README: `tools/pci-match-parse/README.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 232

## Distinction

| Match Layer | Example | Safe Claim |
| --- | --- | --- |
| Generic | `IOProviderClass = IOPCIDevice` | The personality targets a provider class. |
| Family-specific | `IOPCIMatch`, `IOPCIClassMatch` | The personality encodes PCI identity constraints. |

## Boundary

Refined matching metadata is still metadata. It does not prove a runtime match or hardware support.

## Sources

- `knowledge/iokit/IOPCIDevice.md`
- `knowledge/iokit/kext-personalities.md`
- `tools/pci-match-parse/README.md`
