# XNU BSD Lane

## Summary

`bsd` is the XNU lane for Unix-facing kernel behavior: process model, files, sockets, credentials, syscalls, network stack, VFS, and other user-visible services. For bridge readiness, BSD should be studied as the layer that sits above Mach abstractions and below userland frameworks.

## Context

- Official XNU reference: `knowledge/platform/xnu-official-source-reference.md`
- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- Userland boundary map: `knowledge/platform/userland-boundary-map.md`
- Official source area: `https://github.com/apple-oss-distributions/xnu/tree/main/bsd`

## Bridge-Relevant Questions

| Question | Why It Matters |
| --- | --- |
| Which BSD services are visible to user space? | A future bridge may need to preserve syscall-facing expectations. |
| Which process concepts are BSD-level versus Mach-level? | Prevents conflating processes with Mach tasks. |
| Which file, socket, and VFS concepts depend on platform services? | Helps separate generic Unix behavior from hardware-facing assumptions. |
| Which security and credential concepts interact with platform state? | Important before userland claims are made. |
| Which BSD paths expose syscalls through `libsyscall`? | Connects kernel behavior to user-space ABI surfaces. |

## Current Evidence

- The official XNU repository lists `bsd` as a top-level source area.
- The official README describes `bsd` as BSD subsystem code.
- `macos-kernel-layer-map.md` identifies BSD as the lane for process, file, socket, credential, and syscall-facing behavior.
- `userland-boundary-map.md` marks userland service expectations as underdocumented.

## Inferences

- BSD study should follow Mach concept mapping because BSD process semantics sit above Mach tasks and threads.
- Bridge readiness needs BSD notes before any credible userland milestone can be defined.
- File and socket behavior is probably less platform-specific than DeviceTree or interrupt work, but still essential for a complete macOS environment model.

## Unknowns

- No BSD file-level inventory exists in this repository.
- No syscall boundary map exists.
- No process-versus-task note exists.
- No userland milestone ladder exists.

## Next Work

- Inventory first-level `bsd` source folders.
- Draft a process-versus-task boundary note.
- Draft a syscall boundary note connecting `bsd`, `libsyscall`, and userland.

## Sources

- `knowledge/platform/xnu-official-source-reference.md`
- `knowledge/platform/macos-kernel-layer-map.md`
- `knowledge/platform/userland-boundary-map.md`
- https://github.com/apple-oss-distributions/xnu/tree/main/bsd
