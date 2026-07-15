# XNU Source Study Plan

## Summary

XNU is the largest missing knowledge layer for bridge readiness. This plan defines how to study XNU without turning the repository into an implementation branch: start with source provenance, layer inventory, and question routing for Mach, BSD, VM, scheduler, pmap, platform hooks, and IOKit interfaces.

## Context

- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- Bridge focus: `knowledge/platform/arm-bridge-readiness.md`
- Official source reference: `knowledge/platform/xnu-official-source-reference.md`
- Gap register: `planning/BRIDGE_READINESS_GAPS.md`
- Acquisition guide: `docs/guidelines/release-acquisition.md`
- Scope boundaries: `docs/guidelines/scope-boundaries.md`

## Source Acquisition Questions

- Which public XNU source release corresponds to the macOS release being studied?
- Which source tree, tag, or archive is legally reproducible?
- Which files define architecture-specific ARM behavior?
- Which files define Mach task/thread/IPC/VM boundaries?
- Which files define BSD process, file, socket, and syscall behavior?
- Which files define scheduler, pmap, platform, interrupt, timer, and power hooks?
- Which source facts can be cited without committing large source snapshots?

## Study Tracks

| Track | First Question | Output |
| --- | --- | --- |
| Source provenance | Which XNU source version is being cited? | Source reference note. |
| Architecture hooks | Where does architecture-specific code enter common kernel code? | ARM architecture hook note. |
| Mach | Which abstractions form the kernel object and IPC model? | Mach concept map. |
| BSD | Which user-visible kernel services sit above Mach? | BSD boundary note. |
| VM/pmap | Which address-space and mapping concepts are architecture-sensitive? | VM/pmap source-needed note. |
| Scheduler | Which scheduling assumptions cross architecture boundaries? | Scheduler source-needed note. |
| Platform hooks | Which platform initialization hooks seed later services? | Platform hook note. |
| IOKit boundary | Where does XNU expose or host IOKit service mechanics? | XNU-to-IOKit boundary note. |

## Bridge-Relevant Use

XNU study should answer what a future bridge must:

- expose faithfully to macOS layers;
- translate between platform identity models;
- emulate only when no native target equivalent exists;
- compare across releases before assuming stability;
- leave unresolved until target-specific evidence exists.

## Stop Lines

Stop before:

- patching kernel source;
- writing bypass or boot modification guidance;
- committing large raw source archives;
- claiming a source-level behavior applies to a binary release without version mapping;
- turning a source note into implementation instructions.

## Unknowns

- The first public source reference is `https://github.com/apple-oss-distributions/xnu`; four lane notes and a first-level inventory (`knowledge/platform/xnu-first-level-inventory.md`) now cite it.
- Deeper per-file XNU layer notes do not exist yet.
- Version mapping is recorded for macOS `15.6` (source tag `xnu-11417.140.69`) in the inventory note; other releases are not yet mapped.
- The architecture-specific bridge surface is not identified.

## Sources

- `knowledge/platform/macos-kernel-layer-map.md`
- `knowledge/platform/arm-bridge-readiness.md`
- `knowledge/platform/xnu-official-source-reference.md`
- `planning/BRIDGE_READINESS_GAPS.md`
- `docs/guidelines/release-acquisition.md`
- `docs/guidelines/scope-boundaries.md`
