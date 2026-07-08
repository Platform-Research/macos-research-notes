# DriverKit PCI Split

## Summary

DriverKit PCI metadata should be kept separate from kernel kext PCI metadata because placement, entitlement context, and user-space boundaries differ. Shared PCI identity does not make the driver model the same.

## Context

- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Related personality schema: `datasets/schemas/kext-personality.schema.json`
- Related DriverKit note: `knowledge/platform/driverkit-placement.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 258

## Guidance

- Preserve package type when known.
- Keep entitlement adjacency summarized.
- Do not merge dext and kext records only because PCI IDs overlap.

## Sources

- `knowledge/iokit/IOPCIDevice.md`
- `datasets/schemas/kext-personality.schema.json`
- `knowledge/platform/driverkit-placement.md`
