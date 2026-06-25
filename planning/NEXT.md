# Next Work

Use this file to choose the next focused session.

## Last Completed

`knowledge/iokit/IOService.md` was created in the `knowledge/iokit-ioservice` cycle.

## Current Recommendation

Continue the IOKit foundation track with the I/O Registry.

Reason: `IOService` only becomes useful when understood as part of the provider/client graph in the I/O Registry. The next note should explain how services are arranged, found, and related.

## Next Branch

```text
knowledge/iokit-ioregistry
```

## Session Goal

Create the next atomic knowledge note:

```text
knowledge/iokit/IORegistry.md
```

## Research Question

How does the I/O Registry represent provider/client relationships among active `IOService` objects?

## Target Output

A small note using `docs/guidelines/note-template.md` that captures:

- What the I/O Registry is.
- What planes are, especially the service plane.
- How providers and clients appear in registry relationships.
- How user-space tools can inspect the registry safely.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- Local SDK/header references for `IORegistryEntry`.
- `ioreg` command output from safe read-only inspection.
- Links back to `knowledge/iokit/IOService.md`.

## Definition Of Done

Done means:

- `knowledge/iokit/IORegistry.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up experiments are listed for read-only `ioreg` inspection.

## Follow-Up Queue

1. `knowledge/iokit/IOPCIDevice.md`
2. `knowledge/iokit/IOUserClient.md`
3. `knowledge/iokit/kext-personalities.md`
4. `experiments/iokit-registry-dump/`
5. `tools/ioreg-inventory/`
