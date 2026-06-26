# Kext Personality Inventory Tool

## Summary

`kext-personality-inventory.sh` is a small read-only helper for exploring local kext and dext `Info.plist` files. It supports bounded discovery, bundle summaries, key counts, and an explicit IOKit personality allowlist without committing raw plist dumps.

## Commands

Show help:

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh help
```

Count local extension plists:

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh plist-count
```

List a bounded plist sample:

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh plist-sample 20
```

Print selected bundle metadata:

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh bundle-summary /System/Library/Extensions/IOHIDFamily.kext/Contents/Info.plist
```

Print selected personality matching keys:

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh matching-keys /System/Library/Extensions/IOHIDFamily.kext/Contents/Info.plist
```

Count plist keys without preserving values:

```sh
tools/kext-personality-inventory/kext-personality-inventory.sh key-counts /System/Library/Extensions/IOHIDFamily.kext/Contents/Info.plist
```

## Default Safety Rules

- The helper is read-only.
- The helper does not load, unload, start, or stop extensions.
- The helper does not emit full plist dumps as a public command.
- Matching inspection is restricted to an explicit allowlist.
- Key counting strips values before sorting.
- Bundle summaries include only basic bundle metadata.

## Allowlist

The initial matching allowlist includes:

- `IOKitPersonalities`
- `IOClass`
- `IOProviderClass`
- `IONameMatch`
- `IOMatchCategory`
- `IOProbeScore`
- `IOUserClientClass`
- `IOUserClientProperties`
- `IOPCIMatch`
- `IOPCIPrimaryMatch`
- `IOPCISecondaryMatch`
- `IOPCIClassMatch`
- `idVendor`
- `idProduct`

## Out Of Scope

- JSON output.
- Full recursive plist extraction.
- Binary or firmware analysis.
- Extension loading state.
- Runtime registry joins.
- Entitlement value capture.

## Inferences

- A helper should make personality exploration repeatable before a full extractor exists.
- The future schema should store one record per personality, not one record per bundle.
- Family-specific fields should live in bounded schema extension objects after examples are collected.

## Unknowns

- Dext-specific differences still need direct comparison against kext examples.
- The future extractor needs a structural parser instead of line-oriented `plutil -p` filtering.
- Entitlement and user-client property redaction rules still need to be reflected in the schema.

## Next Work

- `datasets/schemas/kext-personality.schema.json`
