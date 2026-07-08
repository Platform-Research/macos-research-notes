# PCI Normalization Boundary

## Summary

PCI fields can be normalized as identity metadata without attaching runtime meaning. Normalization makes values comparable; it does not prove a device matched, attached, or worked.

## Context

- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Related decoder README: `tools/pci-id-decode/README.md`
- Related fixture: `datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 256

## Normalizable Fields

- vendor ID
- device ID
- subsystem vendor ID
- subsystem ID
- class code
- parsed PCI match tokens

## Sources

- `knowledge/iokit/IOPCIDevice.md`
- `tools/pci-id-decode/README.md`
- `datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json`
