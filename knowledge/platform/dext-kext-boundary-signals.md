# Dext Kext Boundary Signals

## Summary

Dext/kext boundary signals are metadata clues that a platform service may be represented by user-space DriverKit components, kernel extensions, or both. These clues help route research, but they do not establish runtime behavior.

## Context

- Related DriverKit note: `knowledge/platform/driverkit-bridge-boundary.md`
- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related schema: `datasets/schemas/kext-personality.schema.json`
- Related fixture: `datasets/fixtures/helper-outputs/kext-personalities.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 211

## Observations

- `kext-personalities.md` records fields such as `IOClass`, `IOProviderClass`, `CFBundleIdentifier`, `IOUserClientClass`, and family-specific keys.
- `driverkit-bridge-boundary.md` identifies DriverKit as a separate boundary for platform research.
- The kext personality schema and helper fixture preserve reduced personality metadata rather than executable code.

## Inferences

- Bundle location, bundle identifier domain, DriverKit-related fields, dext packaging, and entitlement adjacency can suggest a dext/kext boundary.
- `IOUserClientClass` can indicate user-space adjacency, but it is not by itself a DriverKit placement proof.
- Boundary signals should be stored as routing metadata until release-backed artifact inspection confirms the package type.

## Unknowns

- The current schema name is kext-oriented and may need explicit dext fields.
- No fixture currently demonstrates a complete dext personality record.

## Sources

- `knowledge/platform/driverkit-bridge-boundary.md`
- `knowledge/iokit/kext-personalities.md`
- `datasets/schemas/kext-personality.schema.json`
- `datasets/fixtures/helper-outputs/kext-personalities.fixture.json`
