# IOUserClient

## Summary

`IOUserClient` is the IOKit service class used to expose controlled interfaces from kernel services to user-space clients. It matters because `IOServiceOpen()` can create a connection that reaches `IOService::newUserClient()` in the kernel, after which user-space code may call connection methods, map memory, set notification ports, or exchange structured/scalar data depending on the family-specific user client.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`; SDK evidence from Xcode `MacOSX.sdk`.
- Artifact: `IOUserClient.h`, `IOService.h`, `IOKitLib.h`, `IOKitKeys.h`, read-only `ioreg` output.
- Path: `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Kernel.framework/Versions/A/Headers/IOKit/IOUserClient.h`
- Path: `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/IOKit.framework/Versions/A/Headers/IOKitLib.h`
- Tooling: `find`, `rg`, `sed`, `ioreg -p IOService -c IOUserClient -r -l -w 0 -d 1`.

## Observations

- The local `IOUserClient.h` header declares `IOUserClient` as an `IOService` subclass.
- `IOUserClient.h` defines external method argument structures with scalar input/output, structure input/output, async wake ports, and memory descriptors.
- `IOUserClient.h` declares methods such as `externalMethod()`, `registerNotificationPort()`, `initWithTask()`, `clientClose()`, `clientDied()`, and `clientMemoryForType()`.
- `IOService.h` declares `newUserClient()` overloads that return an `IOUserClient **` handler.
- `IOKitLib.h` states that `IOServiceOpen()` requests a connection to an `IOService` and calls `IOService::newUserClient` in the kernel.
- `IOKitLib.h` states that the default `IOService` implementation returns `kIOReturnUnsupported` for user-level clients.
- `IOKitLib.h` states that successful `IOServiceOpen()` returns an `io_connect_t` handle used with `IOConnect*` APIs and destroyed with `IOServiceClose()`.
- `IOKitLib.h` exposes connection APIs including `IOConnectCallMethod()`, scalar/struct variants, async variants, memory mapping calls, notification-port setup, and property-setting calls.
- `IOKitLib.h` states that `IOConnectMapMemory()` may map hardware or shared memory into a caller task, with interpretation controlled by the family.
- `IOKitKeys.h` defines `IOUserClientEntitlements`, `IOUserClientClass`, `IOUserClientCreator`, `IOUserClientDefaultLocking`, `IOUserClientDefaultLockingSetProperties`, and `IOUserClientDefaultLockingSingleThreadExternalMethod`.
- `IOKitKeys.h` defines DriverKit user-client entitlement keys such as `com.apple.developer.driverkit.userclient-access`.
- Runtime `ioreg` output showed many active user-client objects with properties such as `IOUserClientCreator`, `IOUserClientEntitlements`, and default-locking flags.
- Runtime `ioreg` output included process-identifying values in `IOUserClientCreator`; this should be treated as local/sensitive data and not committed as raw inventory output.

## Inferences

- `IOUserClient` is a security boundary, not just an object model convenience: it represents callable kernel or DriverKit-facing interfaces reachable from user-space.
- A safe macOS Research Notes inventory should enumerate user-client classes and high-level flags, but redact or avoid process-specific `IOUserClientCreator` values.
- Opening a service with `IOServiceOpen()` is qualitatively different from enumerating services with `IOServiceGetMatchingServices()`; opening may create state and expose methods.
- User-client research should begin with read-only registry inspection and header analysis before attempting any `IOServiceOpen()` calls.
- DriverKit user-client access appears entitlement-mediated, so notes about dexts should capture entitlement keys and access policy separately from kernel kext user clients.

## Unknowns

- This note does not identify which user clients are safe to open or call.
- The method selector tables for concrete user-client subclasses are not documented here.
- The relationship between `IOUserClientClass` in personalities and runtime user-client instances needs examples.
- The current behavior of DriverKit user clients versus kernel `IOUserClient` subclasses needs a dedicated note.
- A safe redaction policy for user-client inventory output still needs to be written.

## Related

- Related classes: `IOService`, `IORegistryEntry`, `IOUserClient`, `IOUserServer`, `IOMemoryDescriptor`, `IOMemoryMap`.
- Related kexts: future examples should include one HID user client, one graphics/surface user client, and one storage or network user client.
- Related frameworks: `Kernel.framework`, `IOKit.framework`, DriverKit.
- Related notes: `knowledge/iokit/IOService.md`, `knowledge/iokit/IORegistry.md`, `knowledge/iokit/kext-personalities.md`.

## Follow-Up Questions

- Which properties can be safely recorded for user-client inventory without collecting local process data?
- Which kext personalities declare `IOUserClientClass`, and how do those declarations map to runtime classes?
- How do DriverKit user-client entitlement checks differ from kernel user-client entitlement checks?
- Which user clients expose memory mappings through `clientMemoryForType()`?
- What should the project’s policy be for never calling `IOServiceOpen()` during passive inventory?

## Sources

- Local artifact: `Kernel.framework/Headers/IOKit/IOUserClient.h` in the active Xcode `MacOSX.sdk`.
- Local artifact: `Kernel.framework/Headers/IOKit/IOService.h` in the active Xcode `MacOSX.sdk`.
- Local artifact: `IOKit.framework/Headers/IOKitLib.h` in the active Xcode `MacOSX.sdk`.
- Local artifact: `Kernel.framework/Headers/IOKit/IOKitKeys.h` in the active Xcode `MacOSX.sdk`.
- Command: `find /Applications/Xcode.app /Library/Developer/CommandLineTools -path '*IOKit*IOUserClient.h' -type f`
- Command: `rg -n "class IOUserClient|externalMethod|clientClose|clientDied|initWithTask|registerNotificationPort|newUserClient|IOServiceOpen|IOConnectCall|IOUserClientClass|IOUserClient" ...`
- Command: `ioreg -p IOService -c IOUserClient -r -l -w 0 -d 1`
