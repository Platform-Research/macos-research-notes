# PCI Context Requirement

## Summary

PCI fields need source-family context before comparison. A parsed value is useful only when the source field, token grammar, mask behavior, and artifact provenance are known.

## Context

- Related parser README: `tools/pci-match-parse/README.md`
- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Related coverage note: `knowledge/platform/pcie-metadata-coverage.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 257

## Required Context

- source field name
- value and mask representation
- family parser rule
- source release or fixture provenance
- redaction policy

## Sources

- `tools/pci-match-parse/README.md`
- `knowledge/iokit/IOPCIDevice.md`
- `knowledge/platform/pcie-metadata-coverage.md`
