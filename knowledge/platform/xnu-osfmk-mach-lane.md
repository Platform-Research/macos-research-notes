# XNU osfmk Mach Lane

## Summary

`osfmk` is the first XNU lane for Mach-oriented study. For bridge readiness, this lane should explain tasks, threads, IPC, ports, VM concepts, host abstractions, processor sets, and scheduling boundaries before any implementation design is attempted.

## Context

- Official XNU reference: `knowledge/platform/xnu-official-source-reference.md`
- XNU study plan: `knowledge/platform/xnu-source-study-plan.md`
- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- Bridge matrix: `knowledge/platform/arm-bridge-readiness-matrix.md`
- Official source area: `https://github.com/apple-oss-distributions/xnu/tree/main/osfmk`

## Bridge-Relevant Questions

| Question | Why It Matters |
| --- | --- |
| What is the Mach object model for tasks, threads, ports, and hosts? | A future bridge needs to know which abstractions must remain coherent. |
| Which VM concepts are Mach-level versus BSD-level? | Prevents mixing address-space abstractions with file/process semantics. |
| Which scheduler concepts live in `osfmk`? | Determines where CPU and thread execution assumptions start. |
| Which ARM-specific files exist under Mach lanes? | Identifies architecture-sensitive study points. |
| Which headers define stable conceptual boundaries? | Guides reduced notes without copying source. |

## Current Evidence

- The official XNU repository lists `osfmk` as a top-level source area.
- The official README describes `osfmk` as Mach kernel based subsystems.
- `macos-kernel-layer-map.md` identifies Mach as the lane for tasks, threads, ports, IPC, VM concepts, and host abstractions.

## Inferences

- `osfmk` should be studied before scheduler, VM/pmap, and platform-hook notes become specific.
- Bridge readiness likely needs a Mach concept map before it needs code-level details.
- Architecture-specific details should be recorded as source paths and concepts, not as build or patch instructions.

## Unknowns

- No `osfmk` file-level inventory exists in this repository.
- No Mach concept map exists yet.
- The ARM-specific subset of `osfmk` has not been identified.
- Version mapping to a specific macOS release is unresolved.

## Next Work

- Inventory top-level `osfmk` subdirectories from the official source.
- Draft a Mach concept map for tasks, threads, ports, IPC, VM, and host abstractions.
- Add VM/pmap and scheduler notes after the file inventory exists.

## Sources

- `knowledge/platform/xnu-official-source-reference.md`
- `knowledge/platform/xnu-source-study-plan.md`
- `knowledge/platform/macos-kernel-layer-map.md`
- `knowledge/platform/arm-bridge-readiness-matrix.md`
- https://github.com/apple-oss-distributions/xnu/tree/main/osfmk
