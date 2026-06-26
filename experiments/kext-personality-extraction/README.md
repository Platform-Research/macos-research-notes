# Kext Personality Extraction Experiment

## Summary

This experiment defines a minimal extraction shape for kext and dext IOKit personalities. The result is an allowlist-first metadata inventory: capture matching dictionaries and bundle context, avoid raw plist dumps, and defer family-specific payloads until schemas exist.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`.
- Artifact: local extension `Info.plist` files.
- Tooling: `find`, `plutil`, `rg`, `head`, `wc`.
- Related notes: `knowledge/iokit/kext-personalities.md`, `knowledge/iokit/IORegistry.md`, `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/IOUserClient.md`.

## Commands Tested

Count local extension plists:

```sh
find /System/Library/Extensions /Library/Extensions /System/Library/DriverExtensions /Library/DriverExtensions -name Info.plist -type f 2>/dev/null | wc -l
```

List sample extension plists:

```sh
find /System/Library/Extensions /Library/Extensions /System/Library/DriverExtensions /Library/DriverExtensions -name Info.plist -type f 2>/dev/null | head -20
```

Inspect selected matching keys in a plist:

```sh
plutil -p /System/Library/Extensions/IOHIDFamily.kext/Contents/Info.plist | rg 'IOKitPersonalities|IOProviderClass|IOClass|IONameMatch|IOProbeScore|IOMatchCategory|IOUserClientClass|IOPCIMatch|IOPCIPrimaryMatch|IOPCIClassMatch'
```

## Observations

- The local extension paths contained 987 `Info.plist` files across system and library extension locations.
- Sample kexts exposed `IOKitPersonalities` dictionaries with generic matching keys such as `IOClass`, `IOProviderClass`, `IONameMatch`, `IOMatchCategory`, and `IOProbeScore`.
- HID examples exposed `IOUserClientClass` values inside personality-related metadata, connecting personality extraction to user-client inventory.
- USB examples showed name-based matching against embedded USB nubs.
- Networking examples showed resource-based personalities such as `IOResources` providers and `IOMatchCategory` values.
- PCI-specific keys such as `IOPCIMatch`, `IOPCIPrimaryMatch`, and `IOPCIClassMatch` remain part of the desired allowlist even if they did not appear in the small sample set above.

## Allowlist Candidate

Initial personality inventory fields:

- source path
- bundle path
- bundle identifier
- bundle executable
- personality name
- `IOClass`
- `IOProviderClass`
- `IONameMatch`
- `IOMatchCategory`
- `IOProbeScore`
- `IOUserClientClass`
- `IOUserClientProperties`, summarized or redacted
- `IOPCIMatch`
- `IOPCIPrimaryMatch`
- `IOPCISecondaryMatch`
- `IOPCIClassMatch`
- `idVendor`
- `idProduct`
- supported architecture or platform keys when present

## Redact Or Avoid

- full raw plist output
- large binary blobs
- firmware payload references unless specifically studying firmware
- HID report descriptors
- nested vendor-specific dictionaries without a schema
- local filesystem metadata beyond the source path
- entitlement arrays until the project has a consistent redaction rule

## Inferences

- Personality extraction should happen before registry-to-driver joins because personalities describe intended matching without opening services.
- A tool should parse plists structurally and emit one record per personality, not one record per bundle.
- The first schema should preserve generic IOKit matching keys and keep family-specific fields in a bounded extension object.
- Dexts and kexts should share a common personality record shape, with a field identifying the bundle type.

## Unknowns

- The exact dext personality differences on this machine still need a targeted sample.
- The best parser output format, `plutil -p`, XML, or JSON conversion, still needs implementation testing.
- Some family-specific match keys may require dedicated schema extensions.
- The inventory still needs a redaction policy for entitlement and user-client property values.

## Next Work

- `tools/ioreg-inventory/`
- `datasets/schemas/ioreg-inventory.schema.json`
- `tools/kext-personality-inventory/`
- `datasets/schemas/kext-personality.schema.json`
