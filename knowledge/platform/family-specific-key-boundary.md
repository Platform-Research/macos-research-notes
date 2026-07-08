# Family Specific Key Boundary

## Summary

Family-specific personality keys should remain undecoded until the relevant family note, parser, or schema defines their meaning. PCI keys are the first well-scoped example in this repository.

## Context

- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Related parser README: `tools/pci-match-parse/README.md`
- Related personality schema: `datasets/schemas/kext-personality.schema.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 247

## Guidance

- Decode PCI keys only with PCI parser rules.
- Keep unknown family keys as raw reduced metadata when safe.
- Do not infer hardware behavior from an undecoded family key.

## Sources

- `knowledge/iokit/IOPCIDevice.md`
- `tools/pci-match-parse/README.md`
- `datasets/schemas/kext-personality.schema.json`
