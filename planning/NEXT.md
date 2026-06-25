# Next Work

Use this file to choose the next focused session.

## Current Recommendation

Start with the IOKit foundation track.

Reason: nearly every macOS driver or device-support question eventually passes through IOKit concepts such as `IOService`, matching, providers, clients, registry entries, personalities, and kext metadata. This is useful before any hardware-specific ambition.

## Next Branch

```text
knowledge/iokit-ioservice
```

## Session Goal

Create the first atomic knowledge note:

```text
knowledge/iokit/IOService.md
```

## Research Question

What role does `IOService` play in macOS driver matching, lifecycle, and service registration?

## Target Output

A small note using `docs/guidelines/note-template.md` that captures:

- What `IOService` is.
- Why it matters for kexts and drivers.
- How it relates to matching and `registerService()`.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- Local SDK/header references if present.
- Notes from IOKit examples.
- Future artifact references from kext metadata or Ghidra analysis.

## Definition Of Done

Done means:

- `knowledge/iokit/IOService.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up notes are listed for `IORegistry`, `IOPCIDevice`, `IOUserClient`, and kext personalities.

## Follow-Up Queue

1. `knowledge/iokit/IORegistry.md`
2. `knowledge/iokit/IOPCIDevice.md`
3. `knowledge/iokit/IOUserClient.md`
4. `knowledge/iokit/kext-personalities.md`
5. `experiments/iokit-registry-dump/`
