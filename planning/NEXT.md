# Next Work

Use this file to choose the next focused session.

## Last Completed

`knowledge/iokit/IOUserClient.md` was created in the `knowledge/iokit-iouserclient` cycle.

## Current Recommendation

Continue the IOKit foundation track with kext personalities.

Reason: personalities are the data-driven bridge between bundle metadata and `IOService` matching. They are essential before writing any inventory or release-diff tooling.

## Next Branch

```text
knowledge/iokit-kext-personalities
```

## Session Goal

Create the next atomic knowledge note:

```text
knowledge/iokit/kext-personalities.md
```

## Research Question

How do kext personalities describe matching rules for IOKit services?

## Target Output

A small note using `docs/guidelines/note-template.md` that captures:

- What an IOKit personality is.
- Where personalities live in `Info.plist`.
- How keys such as `IOClass`, `IOProviderClass`, `IONameMatch`, `IOPCIMatch`, and `IOUserClientClass` relate to matching.
- How personality extraction should feed future inventories.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- Apple I/O Kit matching documentation.
- Local SDK/header references for matching keys.
- Local examples from system kext/development metadata if available without downloading anything.
- Links back to `knowledge/iokit/IOService.md`, `knowledge/iokit/IOPCIDevice.md`, and `knowledge/iokit/IOUserClient.md`.

## Definition Of Done

Done means:

- `knowledge/iokit/kext-personalities.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up experiments are listed for kext personality extraction.

## Follow-Up Queue

1. `experiments/iokit-registry-dump/`
2. `experiments/pci-device-inventory/`
3. `experiments/user-client-inventory/`
4. `experiments/kext-personality-extraction/`
5. `tools/ioreg-inventory/`
