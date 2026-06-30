# PCI Match String Parser Experiment

## Summary

This experiment defines the first parser shape for PCI personality match strings such as `IOPCIMatch`, `IOPCIPrimaryMatch`, and `IOPCIClassMatch`. The result is a conservative token parser: split match strings into value and optional mask tokens, normalize hex casing, and defer semantic matching until field-specific tests exist.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`.
- Artifacts: local kext and dext `Info.plist` files.
- Related notes: `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/kext-personalities.md`.
- Related tools: `tools/pci-id-decode/`, `tools/kext-personality-inventory/`.

## Commands Tested

Find local PCI match keys:

```sh
rg -n 'IOPCI(Primary|Secondary|Class)?Match' /System/Library/Extensions /Library/Extensions /System/Library/DriverExtensions /Library/DriverExtensions -g 'Info.plist'
```

Inspect selected values structurally:

```sh
python3 - <<'PY'
import plistlib
paths = [
    '/System/Library/Extensions/AppleBCMWLANBusInterfacePCIe.kext/Contents/Info.plist',
    '/System/Library/Extensions/IONVMeFamily.kext/Contents/Info.plist',
    '/System/Library/DriverExtensions/com.apple.DriverKit-AppleEthernetE1000.dext/Info.plist',
]
for path in paths:
    with open(path, 'rb') as handle:
        data = plistlib.load(handle)
    for name, personality in data.get('IOKitPersonalities', {}).items():
        found = {key: personality[key] for key in ('IOPCIMatch', 'IOPCIPrimaryMatch', 'IOPCIClassMatch') if key in personality}
        if found:
            print(path, name, found)
            break
PY
```

## Observations

- Local kexts and dexts use `IOPCIMatch`, `IOPCIPrimaryMatch`, and `IOPCIClassMatch`.
- Observed values included plain hex strings such as `0x2002106b`.
- Observed values included masked strings such as `0x400014e4&0xf000ffff`.
- Observed class match values included masks such as `0x01800200&0xffffff00`.
- `IOPCIDevice.md` records that `IOPCIClassMatch` defaults to mask `0xffffff00` when a mask is not specified.

## Parser Shape

Initial token fields:

- source key
- raw token
- normalized value
- optional normalized mask
- token index
- parse state: `parsed`, `unsupported`, or `ambiguous`

## Supported First Pass

Support these forms first:

- `0x2002106b`
- `0x400014e4&0xf000ffff`
- `0x01800200&0xffffff00`
- whitespace-separated lists of the above forms

## Do Not Infer Yet

The first parser should not:

- decide whether a token matches a registry device;
- split vendor and device fields without field-specific rules;
- apply default masks except where a note or header-backed rule exists;
- parse non-hex tokens;
- treat a parsed token as runtime attachment evidence.

## Release Acquisition Relevance

For future macOS `15.6` acquisition, PCI match parsing is an optional enrichment for reduced kext or DriverKit personality records. A verified `15.6` `Info.plist` containing `IOPCIMatch`, `IOPCIPrimaryMatch`, `IOPCISecondaryMatch`, or `IOPCIClassMatch` can be reduced with `tools/kext-personality-inventory/` and normalized with `tools/pci-match-parse/`.

This experiment remains parser evidence only. Local examples from build `25F80` must not be used as `15.6` release evidence.

## Inferences

- Token parsing can be independent from PCI registry blob decoding.
- Match evaluation should be a later step that consumes normalized registry IDs, parsed tokens, and field-specific rules.
- Fixtures should include both plain and masked token forms before a join tool is added.

## Unknowns

- Multi-token match strings need examples and tests.
- `IOPCIMatch` can match primary or subsystem registers, so field-specific interpretation remains unresolved.
- The project does not yet have a parser implementation for these strings.

## Next Work

- Acquire a verified release source before treating parsed PCI tokens as release-specific evidence.
- Keep hardware matching and registry joins separate from token parsing.
- Add field-specific interpretation only after source-backed examples require it.
