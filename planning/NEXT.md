# Next Work

Use this file to choose the next focused session.

## Last Completed

`knowledge/iokit/IOPCIDevice.md` was created in the `knowledge/iokit-iopcidevice` cycle.

## Current Recommendation

Continue the IOKit foundation track with user clients.

Reason: `IOUserClient` is the bridge between user-space processes and kernel services, which matters for safe tooling, DriverKit boundaries, and understanding what "opening" a service means.

## Next Branch

```text
knowledge/iokit-iouserclient
```

## Session Goal

Create the next atomic knowledge note:

```text
knowledge/iokit/IOUserClient.md
```

## Research Question

How does `IOUserClient` expose controlled user-space access to kernel services?

## Target Output

A small note using `docs/guidelines/note-template.md` that captures:

- What `IOUserClient` is.
- How `IOServiceOpen()` relates to `newUserClient`.
- What should be considered risky about user clients.
- How user clients appear in headers and runtime registry data.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- Local SDK/header references for `IOUserClient`.
- `IOKitLib.h` references for `IOServiceOpen`.
- Read-only `ioreg` output for user-client-related classes if useful.
- Links back to `knowledge/iokit/IOService.md`.

## Definition Of Done

Done means:

- `knowledge/iokit/IOUserClient.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up experiments are listed for safe user-client inventory.

## Follow-Up Queue

1. `knowledge/iokit/kext-personalities.md`
2. `experiments/iokit-registry-dump/`
3. `experiments/pci-device-inventory/`
4. `experiments/user-client-inventory/`
5. `tools/ioreg-inventory/`
