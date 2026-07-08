# IOResources Provider

## Summary

`IOResources` matching is a virtual-provider pattern: a personality can match a named software/platform resource rather than a concrete hardware device. This is useful for bring-up vocabulary because it separates service availability from physical device identity.

## Context

- Related service note: `knowledge/iokit/IOService.md`
- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related virtual provider note: `knowledge/platform/published-ioservice-concept.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 226

## Inferences

- Virtual provider matches can coordinate platform services without describing endpoint hardware.
- A resource-backed match should not be converted into a hardware support claim.
- `IOResources` examples need reduced personality records before family-specific interpretation.

## Sources

- `knowledge/iokit/IOService.md`
- `knowledge/iokit/kext-personalities.md`
- `knowledge/platform/published-ioservice-concept.md`
