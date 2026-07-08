# Generic Personality Keys

## Summary

Generic personality keys are matching fields that are meaningful before a device family is decoded. They should be indexed for every reduced personality record.

## Context

- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related schema: `datasets/schemas/kext-personality.schema.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 246

## Generic Keys

- `CFBundleIdentifier`
- personality name
- `IOClass`
- `IOProviderClass`
- `IONameMatch`
- `IOMatchCategory`
- `IOProbeScore`
- `IOUserClientClass`, with adjacency caution

## Sources

- `knowledge/iokit/kext-personalities.md`
- `datasets/schemas/kext-personality.schema.json`
