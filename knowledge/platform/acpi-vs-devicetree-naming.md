# ACPI vs DeviceTree Naming

## Summary

ACPI-style and DeviceTree-style provider names should be treated as naming contexts, not universal identities. Platform research should record the source plane or metadata field before comparing names across machines, releases, or architecture families.

## Context

- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related DeviceTree note: `knowledge/platform/device-tree-context.md`
- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 225

## Guidance

- Record whether a name came from personality metadata, registry topology, or a DeviceTree-facing plane.
- Treat `IONameMatch` as matching metadata, not as a stable hardware identifier.
- Avoid comparing ACPI-style names and DeviceTree-style names without a shared evidence layer.

## Unknowns

- The repo does not yet have a committed DeviceTree fixture.
- Name safety still needs plane-specific redaction review.

## Sources

- `knowledge/iokit/kext-personalities.md`
- `knowledge/platform/device-tree-context.md`
- `knowledge/platform/topology-vocabulary.md`
