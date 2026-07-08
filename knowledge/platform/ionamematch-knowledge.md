# IONameMatch Knowledge

## Summary

`IONameMatch` can express name-based matching knowledge before registry properties are available. It is useful for identifying platform-facing expectations, but it should not be treated as a stable device identifier without source and plane context.

## Context

- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related fixture: `datasets/fixtures/helper-outputs/kext-personalities.fixture.json`
- Related naming note: `knowledge/platform/acpi-vs-devicetree-naming.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 231

## Safe Claims

- A personality names one or more provider names it can consider.
- Name matching can refine broad provider-class metadata.
- Name metadata alone does not prove a matching provider exists.

## Sources

- `knowledge/iokit/kext-personalities.md`
- `datasets/fixtures/helper-outputs/kext-personalities.fixture.json`
- `knowledge/platform/acpi-vs-devicetree-naming.md`
