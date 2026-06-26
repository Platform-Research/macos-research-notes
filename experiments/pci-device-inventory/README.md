# PCI Device Inventory Experiment

## Summary

This experiment defines a minimal read-only inventory shape for `IOPCIDevice` entries. The result is an allowlist-first approach: collect topology and a small set of PCI identity properties, avoid broad descendants, and do not commit raw `ioreg -l` output.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`.
- Artifact: read-only `ioreg` output.
- Tooling: `ioreg`, `rg`, `wc`.
- Related notes: `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/IORegistry.md`, `knowledge/iokit/kext-personalities.md`.

## Commands Tested

Count root `IOPCIDevice` matches:

```sh
ioreg -p IOService -c IOPCIDevice -r -d 1 -w 0 | rg '^\+-o' | wc -l
```

Inspect selected fields manually:

```sh
ioreg -p IOService -c IOPCIDevice -r -l -w 0
```

List frequent property names:

```sh
ioreg -p IOService -c IOPCIDevice -r -l -w 0 | rg -o '"[A-Za-z0-9,#_-]+" =' | sort | uniq -c | sort -nr
```

## Observations

- A depth-limited `IOPCIDevice` query found seven root matches on this machine.
- `IOPCIDevice` entries exposed useful identity fields such as `vendor-id`, `device-id`, `class-code`, `revision-id`, `subsystem-id`, `subsystem-vendor-id`, `IOName`, `compatible`, and `device_type`.
- Some PCI entries exposed `IOServiceDEXTEntitlements`, which helps connect PCI providers to DriverKit transport policy.
- Broad `-l` output can include child services below the PCI provider, not just the `IOPCIDevice` object.
- Descendant output can include user-client or driver properties outside the PCI identity scope.
- `IODeviceMemory` exposes address/length ranges; these may be useful but should not be part of the initial safe inventory.

## Allowlist Candidate

Initial PCI inventory fields:

- object name
- class name
- registry plane
- `IOName`
- `vendor-id`
- `device-id`
- `class-code`
- `revision-id`
- `subsystem-id`
- `subsystem-vendor-id`
- `compatible`
- `device_type`
- `IOServiceDEXTEntitlements`
- `IOPCIMSIMode`

## Avoid For Initial Inventory

- `IODeviceMemory`
- `IOInterruptSpecifiers`
- `IOInterruptControllers`
- `IOPowerManagement`
- large binary blobs
- descendant driver properties
- user-client properties
- full raw `ioreg -l` output

## Inferences

- A PCI inventory tool should parse a bounded object scope rather than a whole subtree.
- A useful first schema can store PCI identity and matching-relevant fields without collecting memory ranges or local process data.
- The inventory should normalize little-endian data blobs into readable IDs only after a small decoder is tested.
- A later join with kext personalities should use `IOProviderClass`, `IOPCIMatch`, `IOPCIPrimaryMatch`, and `IOPCIClassMatch`.

## Unknowns

- The exact byte-order decoder for `vendor-id` and `device-id` still needs implementation.
- Whether `ioreg -a` XML is easier and safer to parse than text output is not tested.
- The right distinction between root PCI providers and child drivers needs tool support.
- Cross-machine and cross-release stability of the allowlist is unknown.

## Next Experiments

- `experiments/user-client-inventory/`
- `experiments/kext-personality-extraction/`
- `tools/ioreg-inventory/`
- `datasets/schemas/ioreg-inventory.schema.json`
