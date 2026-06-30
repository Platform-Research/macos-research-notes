# IORegistry

## Summary

The I/O Registry is the live, in-memory graph of active IOKit objects. It represents provider/client relationships between `IOService` and `IORegistryEntry` objects across named planes, with the `IOService` plane serving as the general driver/service hierarchy used by matching, attachment, and inspection tools such as `ioreg`.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`; SDK evidence from Xcode `MacOSX.sdk`.
- Artifact: `IORegistryEntry.h`, `IOService.h`, `man ioreg`, Apple I/O Kit Fundamentals archive, read-only `ioreg` output.
- Path: `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Kernel.framework/Versions/A/Headers/IOKit/IORegistryEntry.h`
- Path: `/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Kernel.framework/Versions/A/Headers/IOKit/IOService.h`
- Tooling: `find`, `rg`, `sed`, `man ioreg`, `ioreg -p IOService -l -w 0 -d 1`, `ioreg -d 1 -k IORegistryPlanes -w 0`.

## Observations

- Apple’s archived I/O Kit Fundamentals describes the I/O Registry as a dynamic database of live nubs or drivers that tracks provider/client relationships.
- The archive states the registry is built at each boot, resides in memory, and is not stored on disk or archived between boots.
- The archive describes the registry as mostly tree-like, while allowing a small minority of nodes to have more than one parent.
- The archive says the I/O Registry is accessible from user space through IOKit framework APIs and can be inspected with tools such as I/O Registry Explorer and `ioreg`.
- The archive describes registry planes as different views of relationships between the same registry objects.
- The Service plane is described as the most general plane, displaying objects in the hierarchy in which they are attached during registry construction.
- The local `IORegistryEntry.h` header defines `IORegistryEntry` as the base class for all registry objects.
- `IORegistryEntry` inherits from `OSObject`.
- The `IORegistryEntry` header says entries can be connected in different planes, with differing topologies.
- The header says kernel clients specify planes with plane objects; non-kernel clients specify planes by name.
- The header exposes root and topology APIs such as `getRegistryRoot()`, `getPlane()`, `getParentEntry()`, `getChildEntry()`, `getParentIterator()`, `getChildIterator()`, `isParent()`, `isChild()`, and `inPlane()`.
- The header exposes attach/detach APIs such as `attachToParent()` and `detachFromParent()`.
- The header says attaching an entry into the registry retains both child and parent while attached.
- The header says `getPath()` creates a registry path for an entry in a specified plane, beginning with the plane name followed by path components.
- The `ioreg` manual says `ioreg` displays the I/O Kit registry as an inverted tree.
- The `ioreg` manual represents provider/client relationships as a provider node with client children.
- The `ioreg` manual says the default plane is `IOService`.
- The runtime `ioreg -d 1 -k IORegistryPlanes -w 0` sample reported planes including `IOService`, `IOPower`, `IODeviceTree`, `IOUSB`, `IOPort`, `IOAccessory`, `CoreCapture`, and `WiFiDKCoreCapture`.
- The runtime root entry appeared as `Root <class IORegistryEntry ...>` and included kernel/build metadata plus an `IORegistryPlanes` property.

## Inferences

- The registry is the right next concept after `IOService` because `IOService` matching and attachment only become visible as relationships between registry entries.
- A single object may participate in multiple relationship views; therefore, a path or parent/child relationship should always name the plane being inspected.
- For macOS Research Notes tooling, `ioreg` read-only queries are a safe first experiment for learning actual runtime topology before writing any lower-level driver or kext tooling.
- A future `ioreg-inventory` tool should record at least the plane, object name, class, path, selected properties, and parent/client relationship.
- `IOService` plane traversal is likely the default starting point for driver/service research, while family-specific planes such as `IOUSB` or `IODeviceTree` should be used only when the research question requires that relationship view.

## Unknowns

- This note does not yet compare I/O Registry topology across macOS releases.
- The exact mapping between individual kext personalities and their resulting registry entries still needs concrete examples.
- How DriverKit services appear relative to kernel-resident `IOService` objects needs a separate note.
- The behavior of objects with multiple parents needs a real example before drawing stronger conclusions.
- The best minimal property set for a durable registry inventory has not been tested yet.

## Related

- Related classes: `IORegistryEntry`, `IOService`, `IORegistryPlane`, `IORegistryIterator`, `IOPCIDevice`, `IOUserClient`.
- Related kexts: future examples should include a PCI provider/client chain and a USB provider/client chain.
- Related frameworks: `Kernel.framework`, `IOKit.framework`.
- Related notes: `knowledge/iokit/IOService.md`, `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/IOUserClient.md`, `knowledge/iokit/kext-personalities.md`.

## Follow-Up Questions

- What does a minimal read-only registry dump for one class, such as `IOPCIDevice`, look like?
- Which registry properties are stable enough to store in `datasets/` for release comparison?
- How should sensitive or user-specific registry properties be filtered before committing output?
- Which planes are available on Intel Macs versus Apple Silicon Macs?
- How do DriverKit services appear in `ioreg` compared with kernel-resident services?

## Sources

- Local artifact: `Kernel.framework/Headers/IOKit/IORegistryEntry.h` in the active Xcode `MacOSX.sdk`.
- Local artifact: `Kernel.framework/Headers/IOKit/IOService.h` in the active Xcode `MacOSX.sdk`.
- Command: `find /Applications/Xcode.app /Library/Developer/CommandLineTools -path '*IOKit*IORegistryEntry.h' -type f`
- Command: `rg -n "class IORegistryEntry|IORegistryPlane|getParentEntry|getChildEntry|getParentIterator|getChildIterator|attachToParent|detachFromParent|inPlane|getPath" .../IORegistryEntry.h`
- Command: `man ioreg | col -b | sed -n '1,160p'`
- Command: `ioreg -p IOService -l -w 0 -d 1`
- Command: `ioreg -d 1 -k IORegistryPlanes -w 0`
- External reference: Apple Documentation Archive, The I/O Registry: https://developer.apple.com/library/archive/documentation/DeviceDrivers/Conceptual/IOKitFundamentals/TheRegistry/TheRegistry.html
- External reference: Apple Developer Documentation, `IORegistryEntry`: https://developer.apple.com/documentation/kernel/ioregistryentry
