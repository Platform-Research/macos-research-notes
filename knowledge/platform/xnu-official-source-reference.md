# XNU Official Source Reference

## Summary

The first XNU source reference for bridge readiness is Apple's public `apple-oss-distributions/xnu` repository. Use it as a source map for kernel-layer study, not as an implementation or boot guide.

## Context

- XNU study plan: `knowledge/platform/xnu-source-study-plan.md`
- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- Bridge focus: `knowledge/platform/arm-bridge-readiness.md`
- Gap register: `planning/BRIDGE_READINESS_GAPS.md`
- Official source: `https://github.com/apple-oss-distributions/xnu`

## Source Identity

| Field | Value |
| --- | --- |
| Source | Apple public open-source distribution repository |
| Repository | `apple-oss-distributions/xnu` |
| URL | `https://github.com/apple-oss-distributions/xnu` |
| Use in this repo | Source map and conceptual routing |
| Commit policy | Cite repository paths and small facts; do not vendor source snapshots by default |
| Boundary | Do not turn build, kernelcache, boot, or install instructions into project guidance |

## Repository Areas To Study First

| Area | Bridge-Relevant Meaning | First Question |
| --- | --- | --- |
| `osfmk` | Mach kernel based subsystems | Which Mach abstractions must be understood before bridge design? |
| `bsd` | BSD subsystem code | Which user-visible kernel services sit above Mach? |
| `iokit` | IOKit implementation layer | Where do service, registry, and matching concepts meet kernel code? |
| `libkern` | Kernel C++ and driver support library | Which object and container conventions support IOKit? |
| `pexpert` | Platform-specific code | Which platform hooks affect identity, interrupts, atomics, or startup assumptions? |
| `libsyscall` | User-space syscall interface layer | Which boundaries connect user space to kernel services? |
| `EXTERNAL_HEADERS` | Imported headers used to avoid dependency cycles | Which external interfaces shape kernel build and API exposure? |
| `SETUP` and `config` | Build configuration and exported API configuration | Which facts are configuration metadata versus kernel behavior? |

## Observations

- The official repository README identifies XNU as part of Darwin for macOS and iOS.
- The README describes XNU as a hybrid kernel combining Mach, FreeBSD components, and IOKit.
- The repository tree exposes separate top-level areas for `bsd`, `osfmk`, `iokit`, `libkern`, `pexpert`, `libsyscall`, `security`, `tools`, `config`, and setup/build support.
- The README notes XNU runs on `x86_64` and `ARM64` in single-processor and multiprocessor configurations.

## Inferences

- `osfmk`, `bsd`, `iokit`, `libkern`, and `pexpert` should become the first source-backed study lanes.
- `pexpert` is especially relevant to future bridge readiness because it is the repository area explicitly associated with platform-specific code.
- `libsyscall`, framework headers, and DriverKit headers connect kernel work to the userland boundary, but they should follow the kernel-layer map rather than lead it.
- Build and boot instructions in the upstream README are out of scope for this knowledge phase.

## Stop Lines

Stop before:

- copying large XNU source trees into this repository;
- adding kernel build or boot instructions as operational guidance;
- claiming a source tree version maps to a macOS binary release without provenance;
- treating public source facts as complete coverage of proprietary macOS behavior.

## Next Work

1. Add one source-backed note for `osfmk` as the Mach lane.
2. Add one source-backed note for `bsd` as the BSD lane.
3. Add one source-backed note for `pexpert` as the platform hook lane.
4. Add one source-backed note for `iokit` as the XNU-to-IOKit lane.
5. Done: version mapping for macOS `15.6` (source tag `xnu-11417.140.69`) is recorded in `knowledge/platform/xnu-first-level-inventory.md`.

## Sources

- Official Apple OSS repository: https://github.com/apple-oss-distributions/xnu
- Apple Open Source releases index: https://opensource.apple.com/releases/
