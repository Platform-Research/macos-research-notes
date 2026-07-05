# macOS Kernel Layer Map

## Summary

A future macOS/kernel-to-ARM bridge needs a map of which macOS kernel layers are being discussed. This note separates conceptual layers that are often collapsed together: boot handoff, XNU kernel core, Mach, BSD, libkern, IOKit, platform expert, kernel collections, and user-space service boundaries.

## Context

- Bridge focus: `knowledge/platform/arm-bridge-readiness.md`
- Bridge matrix: `knowledge/platform/arm-bridge-readiness-matrix.md`
- Handoff note: `knowledge/platform/arm-boot-to-iokit-handoff.md`
- Matching note: `knowledge/platform/matching-path.md`
- IOKit notes: `knowledge/iokit/IOService.md`, `knowledge/iokit/IORegistry.md`, `knowledge/iokit/kext-personalities.md`

## Layer Map

| Layer | What To Learn | Bridge-Relevant Question | Current Evidence Level |
| --- | --- | --- | --- |
| Boot handoff | What metadata exists before kernel services matter. | What must be exposed before the kernel-facing layer is meaningful? | Platform note only. |
| XNU kernel core | Kernel architecture, initialization, scheduling, memory, and platform hooks. | Which kernel assumptions are architecture-specific? | Source-needed. |
| Mach | Tasks, threads, ports, IPC, VM concepts, and host abstractions. | Which abstractions need translation or faithful exposure? | Source-needed. |
| BSD | Process, file, socket, credential, and syscall-facing behavior. | Which user-visible expectations sit above the kernel bridge? | Source-needed. |
| libkern | C++ runtime support, OSObject model, containers, and driver support classes. | Which kernel object conventions must IOKit code rely on? | IOKit notes and source-needed. |
| IOKit | Services, registry, matching, personalities, providers, and user clients. | Which provider/service graph must be exposed or emulated? | Existing notes and fixtures. |
| Platform expert | Platform identity and root service publication. | What platform facts seed the service graph? | Topology fixture and source-needed. |
| Kernel collections | Release-owned packaging of kernel and extension metadata. | Where does platform-facing metadata live in a release? | Metadata note only. |
| User-space boundary | launch, DriverKit, user clients, frameworks, and dyld-facing surfaces. | Which kernel services must be visible to user-space consumers? | Sparse notes and source-needed. |

## Observations

- `IOService.md` records provider publication, matching, probing, attachment, startup, and user-client opening as separate concepts.
- `IORegistry.md` records the live registry as an in-memory graph across named planes.
- `kext-personalities.md` records personality metadata as the matching layer connecting bundles to providers.
- `arm-bridge-readiness-matrix.md` classifies layers by whether a future bridge may need to translate, emulate, expose, compare, or ignore them.
- `ROADMAP.md` already names kernel, kexts, dyld, frameworks, and hardware-facing controllers as knowledge-base targets.

## Inferences

- IOKit is currently the strongest layer in the repository; XNU core, Mach, BSD, memory, scheduler, and user-space startup remain underdocumented.
- Bridge design should not start from a single "kernel" bucket. Each layer has different evidence needs and different future bridge verbs.
- Platform expert and DeviceTree context likely sit near the first useful boundary between boot metadata and IOKit matching.

## Unknowns

- The repository has not yet collected committed XNU source references or local source snapshots.
- The project has no Mach, BSD, VM, scheduler, or pmap notes.
- The exact boundary between platform expert publication and later IOKit matching needs source-backed study.
- User-space launch and dyld interactions are not yet mapped.

## Next Work

- Add source-needed notes for XNU, Mach, BSD, VM/pmap, scheduler, and platform expert.
- Promote Platform Expert into its own bridge surface note using existing topology fixture evidence.
- Add a kernel collection metadata record shape before attempting release comparison.

## Sources

- `knowledge/platform/arm-bridge-readiness.md`
- `knowledge/platform/arm-bridge-readiness-matrix.md`
- `knowledge/platform/arm-boot-to-iokit-handoff.md`
- `knowledge/platform/matching-path.md`
- `knowledge/iokit/IOService.md`
- `knowledge/iokit/IORegistry.md`
- `knowledge/iokit/kext-personalities.md`
- `planning/ROADMAP.md`
