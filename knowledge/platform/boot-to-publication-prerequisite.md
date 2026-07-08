# Boot To Publication Prerequisite

## Summary

Boot artifacts prepare the conditions under which kernel and driver metadata may become available. IOService publication is later and should not be inferred from boot artifact presence alone.

## Context

- Related boot note: `knowledge/platform/boot-artifacts.md`
- Related service note: `knowledge/platform/published-ioservice-concept.md`
- Related handoff note: `knowledge/platform/arm-boot-to-iokit-handoff.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 236

## Boundary

- Boot artifact present: packaging or preparation evidence.
- Service published: registry/matching evidence.
- Driver started: runtime lifecycle evidence.

## Sources

- `knowledge/platform/boot-artifacts.md`
- `knowledge/platform/published-ioservice-concept.md`
- `knowledge/platform/arm-boot-to-iokit-handoff.md`
