# Kext Personalities

## Summary

Kext personalities are matching dictionaries, usually stored under `IOKitPersonalities` in a bundle `Info.plist`, that tell IOKit which driver class to instantiate and which provider services it can match. They are the data layer connecting bundle metadata, `IOService` matching, concrete provider classes such as `IOPCIDevice`, and optional user-client configuration.

## Context

- macOS version: Local system kext examples from Darwin Kernel Version `25.5.0`, OS build `25F80`; SDK evidence from Xcode `MacOSX.sdk`.
- Artifact: system kext `Info.plist` files, `IOKitKeys.h`, `IOService.h`, `IOPCIDevice.h`, `IOPCIFamilyDefinitions.h`.
- Path: `/System/Library/Extensions/*/Contents/Info.plist`
- Path: `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Kernel.framework/Versions/A/Headers/IOKit/IOKitKeys.h`
- Tooling: `find`, `rg`, `/usr/libexec/PlistBuddy`.

## Observations

- Local system kext bundles commonly expose `IOKitPersonalities` dictionaries in `Contents/Info.plist`.
- A personality dictionary can include `IOClass`, `IOProviderClass`, `IONameMatch`, `IOMatchCategory`, `IOProbeScore`, `CFBundleIdentifier`, `IOUserClientClass`, and family-specific keys.
- `IOKitKeys.h` defines `IOClass`, `IOProbeScore`, `IOProviderClass`, `IONameMatch`, `IOMatchCategory`, and `IOUserClientClass`.
- `IOService.h` describes `IOClass` as the class of the driver to instantiate on matching providers.
- `IOService.h` describes `IOProviderClass` as the provider class to consider for matching, checked with dynamic casting so subclasses may match.
- `IOService.h` describes `IOProbeScore` as the initial score used to order multiple matching drivers.
- `IOService.h` describes `IOMatchCategory` as a category that affects how multiple drivers can attach/start against a provider.
- `IOService.h` describes `IONameMatch` as name-based matching against provider names, including device-tree properties for some services.
- `IOPCIFamilyDefinitions.h` defines PCI-specific matching keys such as `IOPCIMatch`, `IOPCIPrimaryMatch`, `IOPCISecondaryMatch`, and `IOPCIClassMatch`.
- Local examples included personalities matching by `IOProviderClass` and `IONameMatch`, including embedded, USB, network, and ACPI-style providers.
- Local examples included personalities with `IOUserClientClass`, showing that user-client configuration can appear in the same metadata area as matching data.
- `IOCatalogue.h` references personality matching and removal using dictionaries such as `IOProviderClass = IOPCIDevice`.

## Inferences

- Personality extraction is the natural next dataset before release-diff tooling because it captures intended matching behavior without requiring binary disassembly.
- A useful personality inventory should preserve bundle ID, personality name, `IOClass`, `IOProviderClass`, match keys, `IOMatchCategory`, `IOProbeScore`, and user-client keys.
- Hardware-support research should compare unsupported device registry properties against existing personalities before considering patches or code.
- Personality data alone does not prove a driver started; it only describes matching candidates and configuration.
- `IOUserClientClass` should be indexed with care because it points toward user-space attack surface and access-control questions.

## Unknowns

- This note does not yet enumerate all personalities on the machine.
- The exact order from personality match to probe score adjustment to selected driver needs concrete runtime examples.
- Some matching behavior is family-specific and cannot be inferred from generic keys alone.
- Dext personality structure needs a separate comparison with kext `IOKitPersonalities`.
- A schema for storing extracted personalities in `datasets/` has not been defined yet.

## Related

- Related classes: `IOService`, `IORegistryEntry`, `IOPCIDevice`, `IOUserClient`, `IOCatalogue`.
- Related kexts: examples should include PCI, USB, HID, storage, network, and graphics families.
- Related frameworks: `Kernel.framework`, `IOKit.framework`.
- Related notes: `knowledge/iokit/IOService.md`, `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/IOUserClient.md`, `knowledge/iokit/IORegistry.md`.

## Follow-Up Questions

- What JSON schema should represent one extracted personality?
- Which match keys are generic versus family-specific?
- How should personality extraction handle plugins nested inside kext bundles?
- How do dext personalities differ from kext personalities on this system?
- Which personality fields should be redacted or normalized before commit?

## Sources

- Local artifact: `/System/Library/Extensions/*/Contents/Info.plist`.
- Local artifact: `Kernel.framework/Headers/IOKit/IOKitKeys.h` in the active Xcode `MacOSX.sdk`.
- Local artifact: `Kernel.framework/Headers/IOKit/IOService.h` in the active Xcode `MacOSX.sdk`.
- Local artifact: `Kernel.framework/Headers/IOKit/pci/IOPCIFamilyDefinitions.h` in the active Xcode `MacOSX.sdk`.
- Command: `find /System/Library/Extensions /Library/Extensions /System/Library/DriverExtensions /Library/DriverExtensions -name Info.plist -type f`
- Command: `/usr/libexec/PlistBuddy -c 'Print :IOKitPersonalities' <Info.plist>`
- Command: `rg -n "IOKitPersonalities|IOProviderClass|IOClass|IONameMatch|IOUserClientClass|IOPCIMatch|IOPCIPrimaryMatch|IOPCIClassMatch|IOMatchCategory|IOProbeScore" ...`
