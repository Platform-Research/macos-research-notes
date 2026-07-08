# Match Category Interpretation

## Summary

`IOMatchCategory` is matching metadata that affects how multiple clients may be interpreted around a provider. It should be treated as attachment-shaping metadata, not as proof that any client attached or started.

## Context

- Related service note: `knowledge/iokit/IOService.md`
- Related personality note: `knowledge/iokit/kext-personalities.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 228

## Observations

- `IOService.md` records `gIOMatchCategoryKey` among matching-related keys.
- `kext-personalities.md` records that personality dictionaries can include `IOMatchCategory`.
- `provider-discovery-vs-startup.md` separates personality candidates from attachment and startup.

## Inferences

- Match category can help explain why competing or multiple personalities need careful interpretation.
- It belongs in reduced personality inventories.
- It does not prove runtime behavior without attachment evidence.

## Sources

- `knowledge/iokit/IOService.md`
- `knowledge/iokit/kext-personalities.md`
- `knowledge/platform/provider-discovery-vs-startup.md`
