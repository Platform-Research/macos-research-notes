# Driver Class vs Provider Class

## Summary

`IOClass` and `IOProviderClass` describe different sides of matching. `IOClass` names the driver/service class to instantiate; `IOProviderClass` constrains which provider class can be considered.

## Context

- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related service note: `knowledge/iokit/IOService.md`
- Related schema: `datasets/schemas/kext-personality.schema.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 230

## Distinction

| Field | Meaning | Boundary |
| --- | --- | --- |
| `IOClass` | Candidate driver/service class | Does not prove instantiation. |
| `IOProviderClass` | Provider class constraint | Does not prove provider existence or attachment. |

## Sources

- `knowledge/iokit/kext-personalities.md`
- `knowledge/iokit/IOService.md`
- `datasets/schemas/kext-personality.schema.json`
