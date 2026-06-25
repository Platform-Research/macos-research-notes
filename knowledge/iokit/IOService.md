# IOService

## Summary

`IOService` is the central IOKit base class for most kernel-side driver, family, device, and service objects. It matters because provider publication, driver matching, probing, attachment, startup, notification, termination, and user-space discovery all orbit around `IOService` objects and their relationships in the I/O Registry.

## Context

- macOS version: SDK evidence from Xcode `MacOSX.sdk`; runtime behavior still needs artifact-specific confirmation per macOS release.
- Artifact: `IOService.h`, `IOKitLib.h`, Apple I/O Kit Fundamentals archive.
- Path: `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Kernel.framework/Versions/A/Headers/IOKit/IOService.h`
- Path: `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/IOKit.framework/Versions/A/Headers/IOKitLib.h`
- Tooling: `xcrun --show-sdk-path`, `find`, `rg`, `sed`, Apple Developer Documentation Archive.

## Observations

- The local Kernel.framework header describes `IOService` as the base class for most IOKit families, devices, and drivers.
- `IOService` inherits from `IORegistryEntry`, placing services directly in the I/O Registry model.
- The header says `IOService` provides APIs for publishing services, instantiating services from provider publication, destroying dependent service stacks, notifying interested clients, and shared utility behavior.
- The class declaration is present in `IOService.h` as `class IOService : public IORegistryEntry`.
- The header declares matching-related keys such as `gIOProviderClassKey`, `gIONameMatchKey`, `gIOMatchCategoryKey`, `gIOMatchedServiceCountKey`, and `gIOMatchedPersonalityKey`.
- `registerService(IOOptionBits options = 0)` starts registration for a newly discovered service. The header states the object should be fully set up and ready to handle client requests before registration.
- When a provider is published with `registerService()`, matching and probing begin for that provider.
- Driver property tables can include keys such as `IOClass`, `IOProviderClass`, `IOProbeScore`, `IOMatchCategory`, and `IONameMatch`.
- Matching can be based on provider class, registry name, registry path, BSD-assigned name, location, and family-specific properties.
- Apple’s I/O Kit Fundamentals archive describes driver matching as a process using personality dictionaries stored under `IOKitPersonalities` in a kext `Info.plist`.
- Apple’s archived matching chapter describes three matching phases: class matching, passive matching using personality properties, and active matching through `probe()`.
- The local header declares lifecycle methods including `init()`, `probe()`, `start()`, `stop()`, `attach()`, `detach()`, `terminate()`, and `finalize()`.
- The header says `attach()` enters a client into the I/O Registry as a child of the provider in the service plane.
- The header says `detach()` removes that client/provider relationship in the service plane.
- The header says `probe()` can adjust the probe score and returns an `IOService *` on success or zero on failure.
- The header says `start()` is called when an instance has been selected to run on a provider, and returns `true` or `false`.
- `IOKitLib.h` exposes user-space matching helpers such as `IOServiceMatching()`, `IOServiceNameMatching()`, and `IOServiceGetMatchingServices()`.
- `IOKitLib.h` states that `IOServiceOpen()` requests a connection to a kernel service and calls `IOService::newUserClient` in the kernel.

## Inferences

- `IOService` is the right first concept for the IOKit track because it connects driver identity, provider/client relationships, matching, lifecycle, registry structure, and user-space discovery.
- For kext or dext research, `IOKitPersonalities` should usually be read together with `IOService` matching semantics; a personality is not just metadata, it is input to service instantiation and selection.
- `registerService()` is a boundary between "this service exists internally" and "IOKit may now match clients/drivers/notifications against it."
- A future `kext-inventory` or release-diff tool should extract at least `IOClass`, `IOProviderClass`, `IOProbeScore`, `IOMatchCategory`, family-specific match keys, and bundle identifiers from kext metadata.
- User-space inventory experiments can start with `IOServiceMatching()` and `IOServiceGetMatchingServices()`, but opening a service is a separate capability path involving `IOServiceOpen()` and kernel-side user clients.

## Unknowns

- Which `IOService` implementation details changed between macOS 15.x and 16.x are not known from the SDK header alone.
- The exact runtime path from a specific provider’s `registerService()` to selected client `start()` still needs artifact-backed tracing or logs.
- DriverKit behavior overlaps with but is not identical to kernel-resident IOKit behavior; this note focuses on kernel-side `IOService`.
- Family-specific matching behavior, especially PCI, USB, NVMe, and graphics, needs separate notes.
- The relationship between `IOMatchCategory` and multi-client attachment needs concrete examples from real kext personalities.

## Related

- Related classes: `IORegistryEntry`, `IOPCIDevice`, `IOUserClient`, `OSObject`, `OSMetaClass`.
- Related kexts: future examples should include one PCI-family kext, one USB-family kext, and one virtual service matching on `IOResources`.
- Related frameworks: `Kernel.framework`, `IOKit.framework`.
- Related notes: `knowledge/iokit/IORegistry.md`, `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/IOUserClient.md`, `knowledge/iokit/kext-personalities.md`.

## Follow-Up Questions

- What minimal properties are required for a PCI driver personality to match an `IOPCIDevice` provider?
- Which real Apple kexts in macOS 15.6 and 16.0 expose clear examples of `IOProviderClass`, `IOProbeScore`, and `IOMatchCategory`?
- What does an `ioreg` dump show before and after a service registers children?
- How does a user-space process safely enumerate services without opening them?

## Sources

- Local artifact: `Kernel.framework/Headers/IOKit/IOService.h` in the active Xcode `MacOSX.sdk`.
- Local artifact: `IOKit.framework/Headers/IOKitLib.h` in the active Xcode `MacOSX.sdk`.
- Command: `xcrun --show-sdk-path`
- Command: `find /Applications/Xcode.app /Library/Developer/CommandLineTools -path '*IOKit*IOService.h' -type f`
- Command: `rg -n "class IOService|registerService|virtual bool start|virtual bool init|virtual IOService \\* probe|attach\\(|detach\\(" .../IOService.h`
- External reference: Apple Developer Documentation, `IOService`: https://developer.apple.com/documentation/kernel/ioservice
- External reference: Apple Documentation Archive, I/O Kit Fundamentals introduction: https://developer.apple.com/library/archive/documentation/DeviceDrivers/Conceptual/IOKitFundamentals/Introduction/Introduction.html
- External reference: Apple Documentation Archive, Driver and Device Matching: https://developer.apple.com/library/archive/documentation/DeviceDrivers/Conceptual/IOKitFundamentals/Matching/Matching.html
- External reference: Apple Documentation Archive, The Base Classes: https://developer.apple.com/library/archive/documentation/DeviceDrivers/Conceptual/IOKitFundamentals/BaseClasses/BaseClasses.html
