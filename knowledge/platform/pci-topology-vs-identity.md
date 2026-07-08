# PCI Topology vs Identity

## Summary

PCI topology fields describe where a function appears in the registry, while PCI identity fields describe what the function claims to be. Platform notes should keep location-like evidence separate from vendor, device, subsystem, and class-code evidence.

## Context

- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Related fixture: `datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 224

## Field Split

| Field Kind | Examples | Use |
| --- | --- | --- |
| Topology | plane, depth, ancestry, bridge context | Place a service in a graph. |
| Identity | vendor ID, device ID, subsystem IDs, class code | Compare a device to match metadata. |
| Match metadata | `IOPCIMatch`, `IOPCIPrimaryMatch`, `IOPCIClassMatch` | Route candidate personalities. |

## Boundary

Topology does not identify a device by itself. Identity does not prove attachment by itself.

## Sources

- `knowledge/iokit/IOPCIDevice.md`
- `datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json`
