# Registry Personality Join Experiment

## Summary

This experiment defines the smallest safe join between IORegistry inventory records and kext or dext personality records. The result is a conservative join plan: match only on explicit provider and hardware keys, preserve unresolved cases, and avoid claiming that a personality loaded unless runtime evidence proves it.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`.
- Artifacts: bounded helper output from `tools/ioreg-inventory/` and `tools/kext-personality-inventory/`.
- Schemas: `datasets/schemas/ioreg-inventory.schema.json`, `datasets/schemas/kext-personality.schema.json`.
- Related notes: `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/IORegistry.md`, `knowledge/iokit/kext-personalities.md`.

## Commands Tested

Count PCI registry candidates:

```sh
tools/ioreg-inventory/ioreg-inventory.sh pci-count
```

Inspect bounded PCI allowlist fields:

```sh
tools/ioreg-inventory/ioreg-inventory.sh pci-allowlist | head -20
```

Inspect bounded personality matching keys:

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh matching-keys /System/Library/Extensions/IOHIDFamily.kext/Contents/Info.plist | head -20
```

Inspect a name-match personality sample:

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh matching-keys /System/Library/Extensions/AppleUSBHostT7000.kext/Contents/Info.plist | head -20
```

## Observations

- The local PCI helper still found seven root `IOPCIDevice` candidates.
- PCI registry records expose candidate fields such as `IOName`, `compatible`, `vendor-id`, `device-id`, and `class-code`.
- Personality records expose generic matching keys such as `IOProviderClass`, `IONameMatch`, `IOMatchCategory`, `IOClass`, and optional `IOUserClientClass`.
- HID sample personalities matched provider classes such as `IOHIDInterface`, `IOHIDDevice`, `IOHIDEventService`, and `IOResources`.
- USB sample personalities matched by `IOProviderClass` plus `IONameMatch`.
- A join from personality metadata to a runtime driver instance is not the same thing as proving that driver is active.

## First Join Keys

Safe first-pass joins:

- `IOProviderClass` to registry `class_name` or provider ancestor class.
- `IONameMatch` to registry `IOName` when both values are explicit strings.
- `IOPCIMatch` or `IOPCIPrimaryMatch` to normalized PCI vendor and device IDs after byte-order decoding exists.
- `IOPCIClassMatch` to normalized PCI class code after class-code decoding exists.
- `IOUserClientClass` to user-client class inventory only as a declared surface, not as proof of an active connection.

## Do Not Guess

Keep a candidate unresolved when:

- only one side has a normalized ID;
- registry values are raw little-endian blobs;
- matching depends on family-specific dictionaries not represented in the schema;
- multiple personalities match the same provider without probe or runtime evidence;
- the personality describes a possible match but runtime attachment is not observed;
- the join would require opening a service or calling a user client.

## Inferences

- The first join experiment should produce candidate edges, not final truth.
- A useful join record needs confidence and reason fields, even before a formal join schema exists.
- PCI joins should wait for a small decoder that converts registry blobs into canonical IDs.
- Provider-class joins should include path or ancestor context to reduce false positives.

## Unknowns

- The exact ancestor fields needed for reliable provider-class joins are not yet captured.
- PCI byte-order decoding still needs implementation and tests.
- Runtime driver attachment should be modeled separately from personality match candidates.
- A join schema should wait until JSON outputs exist for both helper tools.

## Next Work

- `tools/ioreg-inventory/` structured JSON output.
- `tools/kext-personality-inventory/` structured JSON output.
- Join schema after sample records exist.
