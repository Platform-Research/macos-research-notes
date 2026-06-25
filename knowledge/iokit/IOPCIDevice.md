# IOPCIDevice

## Summary

`IOPCIDevice` is the IOKit provider class representing PCI and PCIe functions in the registry. It matters because many hardware-support questions reduce to how a driver personality matches a PCI provider through identity fields such as vendor ID, device ID, class code, and family-specific PCI match keys.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`; SDK evidence from Xcode `MacOSX.sdk`.
- Artifact: `IOPCIDevice.h`, `IOPCIFamilyDefinitions.h`, read-only `ioreg` output.
- Path: `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Kernel.framework/Versions/A/Headers/IOKit/pci/IOPCIDevice.h`
- Path: `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Kernel.framework/Versions/A/Headers/IOKit/pci/IOPCIFamilyDefinitions.h`
- Tooling: `find`, `rg`, `sed`, `ioreg -p IOService -c IOPCIDevice -r -l -w 0 -d 1`.

## Observations

- The local `IOPCIDevice.h` header declares `IOPCIDevice` as an `IOService` subclass.
- `IOPCIFamilyDefinitions.h` defines PCI matching property names including `IOPCIMatch`, `IOPCIPrimaryMatch`, `IOPCISecondaryMatch`, and `IOPCIClassMatch`.
- `IOPCIDevice.h` states that `IOPCIMatch` matches the vendor/device ID register or the subsystem register.
- `IOPCIDevice.h` states that `IOPCIPrimaryMatch` matches the vendor/device ID register.
- `IOPCIDevice.h` states that `IOPCIClassMatch` matches the class code register and that the default mask is `0xffffff00`.
- `IOPCIDevice.h` exposes config-space accessors such as `configRead32`, `configRead16`, `configRead8`, and corresponding write methods.
- `IOPCIDevice.h` exposes bus/function location helpers such as `getBusNumber()`, `getDeviceNumber()`, and `getFunctionNumber()`.
- `IOPCIDevice.h` exposes device-memory helpers such as `getDeviceMemoryWithRegister()`, `mapDeviceMemoryWithRegister()`, and `ioDeviceMemory()`.
- Runtime `ioreg` output for `IOPCIDevice` entries included properties such as `vendor-id`, `device-id`, `class-code`, `revision-id`, `subsystem-id`, `subsystem-vendor-id`, `compatible`, `IOName`, `IODeviceMemory`, `IOInterruptControllers`, and `IOServiceDEXTEntitlements`.
- Runtime `ioreg` output showed PCI bridge providers and endpoint-style services such as WLAN, Bluetooth PCIe, and SD reader entries.
- Some runtime entries exposed `IOServiceDEXTEntitlements` containing DriverKit PCI transport entitlement strings.

## Inferences

- For PCI driver research, the minimum useful identity set is `IOProviderClass = IOPCIDevice`, plus vendor/device/class matching keys from the kext or dext personality.
- `IOPCIMatch` and `IOPCIPrimaryMatch` are high-value fields for inventory tooling because they tie personalities to concrete PCI identity registers.
- `IOPCIClassMatch` is useful for broader class-level matches when a driver targets a class of devices rather than one vendor/device pair.
- Runtime `ioreg` inspection can safely answer which PCI providers exist and which properties they publish, but it does not by itself prove which driver personality selected the service.
- Unsupported-hardware investigation should start by comparing the device’s registry identity against known working personalities before considering code changes.

## Unknowns

- This note does not yet decode little-endian `ioreg` data blobs into human-readable PCI IDs.
- The exact personality-to-provider match for each runtime `IOPCIDevice` entry has not been traced.
- DriverKit PCI matching behavior needs a dedicated comparison against kernel kext matching.
- Which PCI properties are stable across macOS versions has not been tested.
- The relationship between `compatible` strings and `IOPCIMatch`/`IOPCIClassMatch` needs concrete examples from real kext personalities.

## Related

- Related classes: `IOService`, `IORegistryEntry`, `IOPCIBridge`, `IOAGPDevice`, `IODeviceMemory`, `IOUserClient`.
- Related kexts: future examples should include a PCI bridge, storage controller, network controller, and graphics-related provider.
- Related frameworks: `Kernel.framework`, `IOKit.framework`, DriverKit PCI transport.
- Related notes: `knowledge/iokit/IOService.md`, `knowledge/iokit/IORegistry.md`, `knowledge/iokit/IOUserClient.md`, `knowledge/iokit/kext-personalities.md`.

## Follow-Up Questions

- What is the exact byte order and formatting convention for `vendor-id` and `device-id` values in `ioreg` output?
- Which local Apple kext personalities use `IOPCIMatch`, `IOPCIPrimaryMatch`, or `IOPCIClassMatch`?
- How can a small inventory script safely extract PCI IDs without collecting user-specific registry data?
- How do DriverKit PCI entitlements relate to matching and service opening?
- Which PCI providers exist on Intel Macs but not Apple Silicon Macs?

## Sources

- Local artifact: `Kernel.framework/Headers/IOKit/pci/IOPCIDevice.h` in the active Xcode `MacOSX.sdk`.
- Local artifact: `Kernel.framework/Headers/IOKit/pci/IOPCIFamilyDefinitions.h` in the active Xcode `MacOSX.sdk`.
- Command: `find /Applications/Xcode.app /Library/Developer/CommandLineTools -path '*IOKit*pci*' -o -path '*IOKit*PCI*'`
- Command: `rg -n "IOPCIDevice|IOPCIMatch|IOPCIPrimaryMatch|IOPCIClassMatch|vendor-id|device-id|class-code|configRead|configWrite" .../Headers`
- Command: `ioreg -p IOService -c IOPCIDevice -r -l -w 0 -d 1`
