# PCIe Bridge Concept

## Summary

A PCIe bridge service is topology evidence before it is endpoint evidence. It suggests downstream PCIe organization, but it should not be interpreted as a device capability or driver success by itself.

## Context

- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Related coverage note: `knowledge/platform/pcie-metadata-coverage.md`
- Related note: `knowledge/platform/pci-bridge-vs-endpoint.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 223

## Observations

- `IOPCIDevice.md` records that runtime PCI examples included bridge providers and endpoint-style services.
- `pcie-metadata-coverage.md` treats PCIe coverage as metadata-only.
- `pci-bridge-vs-endpoint.md` separates topology organizers from endpoint identity.

## Inferences

- A bridge service can explain why downstream PCI providers appear under a path.
- Endpoint interpretation needs additional PCI identity fields or family-specific matches.
- A bridge does not prove a downstream endpoint attached or started.

## Sources

- `knowledge/iokit/IOPCIDevice.md`
- `knowledge/platform/pcie-metadata-coverage.md`
- `knowledge/platform/pci-bridge-vs-endpoint.md`
