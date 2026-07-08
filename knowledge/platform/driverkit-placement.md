# DriverKit Placement

## Summary

DriverKit indicates that some driver-related behavior may live outside the kernel while still participating in platform-facing matching and service relationships. Reduced metadata can record the placement signal, but it should not claim device behavior or entitlement reachability.

## Context

- Related DriverKit note: `knowledge/platform/driverkit-bridge-boundary.md`
- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 210

## Observations

- `driverkit-bridge-boundary.md` records DriverKit as a boundary needing separate treatment from kernel-resident kext behavior.
- `kext-personalities.md` records that user-client and personality metadata can appear near matching metadata.
- `IOPCIDevice.md` records runtime PCI entries that exposed DriverKit-related entitlement metadata.

## Inferences

- DriverKit placement is a signal about where driver code may execute, not proof that a device works.
- Platform inventories should keep dext-related fields distinct from kernel kext fields.
- Entitlement names and user-client adjacency should be summarized carefully because they can imply access-control surfaces.

## Unknowns

- The repo does not yet have a dext-specific reduced metadata schema.
- The exact relationship between DriverKit service publication and kernel `IOService` objects needs a concrete example.

## Sources

- `knowledge/platform/driverkit-bridge-boundary.md`
- `knowledge/iokit/kext-personalities.md`
- `knowledge/iokit/IOPCIDevice.md`
