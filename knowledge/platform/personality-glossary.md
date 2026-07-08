# Personality Glossary

## Summary

A personality is a matching dictionary that declares how a driver class can be considered for a provider. It is intent and constraint metadata, not proof that the driver matched, attached, or started.

## Context

- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related service note: `knowledge/iokit/IOService.md`
- Related schema: `datasets/schemas/kext-personality.schema.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 214

## Definition

Personality: a dictionary, usually under `IOKitPersonalities`, that names a driver class and matching criteria such as provider class, name match, probe score, match category, or family-specific keys.

## Observations

- `kext-personalities.md` records personality fields including `IOClass`, `IOProviderClass`, `IONameMatch`, `IOMatchCategory`, `IOProbeScore`, `CFBundleIdentifier`, and family-specific keys.
- `IOService.md` records matching, probing, attachment, and startup as separate lifecycle stages.
- The kext personality schema models reduced personality metadata.

## Use

- Use personality metadata to identify candidates and research routes.
- Do not use a personality alone as evidence of runtime attachment.
- Preserve bundle identity separately from service identity.

## Sources

- `knowledge/iokit/kext-personalities.md`
- `knowledge/iokit/IOService.md`
- `datasets/schemas/kext-personality.schema.json`
