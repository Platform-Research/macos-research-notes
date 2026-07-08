# Parent vs Provider

## Summary

A parent service is a topology relationship in a named registry plane. A provider service is the object a client matches or attaches to in the IOService model. They often align, but platform notes should not collapse the terms without evidence.

## Context

- Related registry note: `knowledge/iokit/IORegistry.md`
- Related service note: `knowledge/iokit/IOService.md`
- Related service concept: `knowledge/platform/published-ioservice-concept.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 244

## Distinction

| Term | Evidence | Boundary |
| --- | --- | --- |
| Parent | plane-specific topology | Does not always imply matching provider. |
| Provider | IOService matching/attachment context | Does not describe all plane relationships. |

## Sources

- `knowledge/iokit/IORegistry.md`
- `knowledge/iokit/IOService.md`
- `knowledge/platform/published-ioservice-concept.md`
