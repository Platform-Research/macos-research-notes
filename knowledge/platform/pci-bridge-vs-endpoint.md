# PCI Bridge vs Endpoint

## Summary

PCI bridge objects should be treated as topology organizers, while endpoint PCI devices should be treated as identity-bearing candidates for family-specific matching. Reduced metadata can distinguish the two only cautiously: class names, ancestry, and PCI match fields guide interpretation, but they do not prove driver startup or support quality.

## Context

- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Related coverage note: `knowledge/platform/pcie-metadata-coverage.md`
- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related fixture: `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 204

## Observations

- `IOPCIDevice.md` records that `IOPCIDevice` is an `IOService` subclass representing PCI and PCIe functions.
- `IOPCIDevice.md` records that runtime examples included both PCI bridge providers and endpoint-style services.
- `IOPCIDevice.md` records PCI identity and matching fields such as vendor ID, device ID, class code, `IOPCIMatch`, `IOPCIPrimaryMatch`, and `IOPCIClassMatch`.
- `topology-vocabulary.md` keeps class, plane, depth, and ancestry separate from property-bearing PCI identity.

## Inferences

- A PCI bridge object is primarily useful as topology evidence: it helps explain where downstream providers may appear.
- An endpoint-style `IOPCIDevice` becomes a stronger matching candidate when paired with decoded PCI identity or personality match keys.
- Bridge-vs-endpoint classification should prefer class/ancestor context plus PCI class metadata, not object names alone.
- Neither bridge presence nor endpoint identity proves a matching driver attached or started.

## Unknowns

- The project does not yet have a reduced fixture that labels PCI bridge and endpoint roles explicitly.
- PCI class-code decoding still needs family-specific validation before release comparison.

## Sources

- `knowledge/iokit/IOPCIDevice.md`
- `knowledge/platform/pcie-metadata-coverage.md`
- `knowledge/platform/topology-vocabulary.md`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
