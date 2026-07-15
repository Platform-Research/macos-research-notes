# XNU First-Level Source Inventory

## Summary

This note records the first-level (immediate) subdirectories of the four primary XNU study lanes — `osfmk`, `bsd`, `pexpert`, and `iokit` — from the public `apple-oss-distributions/xnu` repository at the tag that Apple's own release manifest maps to macOS `15.6`. It upgrades the four lane notes from "no file-level inventory exists" to a public-reference-backed first-level inventory. It lists directory names as observations and their bridge-relevant meaning as inference, without copying source, interpreting file behavior, or claiming release-binary equivalence.

## Context

- macOS version: `15.6` (source-tag mapped, not release-binary verified)
- Artifact: public XNU source tree directory listings
- Path (upstream): `apple-oss-distributions/xnu` at tag `xnu-11417.140.69`
- Tooling: GitHub contents API (`api.github.com/repos/apple-oss-distributions/xnu/contents/<dir>?ref=<tag>`)
- Official XNU reference: `knowledge/platform/xnu-official-source-reference.md`
- XNU study plan: `knowledge/platform/xnu-source-study-plan.md`
- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- Lane notes: `knowledge/platform/xnu-osfmk-mach-lane.md`, `knowledge/platform/xnu-bsd-lane.md`, `knowledge/platform/xnu-pexpert-lane.md`, `knowledge/platform/xnu-iokit-lane.md`
- Evidence ladder: `knowledge/platform/arm-release-evidence-ladder.md`

## Version Mapping

| Field | Value | Provenance |
| --- | --- | --- |
| macOS release | `macOS 15.6` | Apple release manifest `release` field |
| Major release | `macOS 15` | Apple release manifest `major_release` field |
| XNU source tag | `xnu-11417.140.69` | Apple release manifest `xnu` project `tag` field |
| Manifest source | `apple-oss-distributions/distribution-macOS` at ref `macos-156` | `release.json` |
| Retrieved | `2026-07-15` | This session |

Evidence type: public source-tree listing at a pinned tag, with the tag-to-release mapping taken from Apple's public release manifest. This is a source-reference fact, not a macOS `15.6` binary-verified fact. Do not treat directory presence as proof of runtime behavior, driver support, or hardware enablement.

## Observations

All names below are the verbatim first-level directory entries returned for each lane at tag `xnu-11417.140.69`. Top-level files (for example each lane's `Makefile`) are not listed; only immediate subdirectories are inventoried.

- `osfmk` (29 subdirectories): `UserNotification`, `arm`, `arm64`, `atm`, `bank`, `conf`, `console`, `corecrypto`, `corpses`, `default_pager`, `device`, `gssd`, `i386`, `ipc`, `kdp`, `kern`, `kextd`, `kperf`, `libsa`, `lockd`, `mach`, `mach_debug`, `machine`, `man`, `prng`, `tests`, `vm`, `voucher`, `x86_64`.
- `bsd` (26 subdirectories): `arm`, `bsm`, `conf`, `crypto`, `dev`, `i386`, `kern`, `libkern`, `machine`, `man`, `miscfs`, `net`, `netinet`, `netinet6`, `netkey`, `nfs`, `pgo`, `pthread`, `security`, `skywalk`, `sys`, `tests`, `uuid`, `uxkern`, `vfs`, `vm`.
- `pexpert` (5 subdirectories): `arm`, `conf`, `gen`, `i386`, `pexpert`.
- `iokit` (11 subdirectories): `DriverKit`, `Examples`, `Exclaves`, `Families`, `IOKit`, `IOKitUser`, `Kernel`, `System`, `Tests`, `bsddev`, `conf`.

## Inferences

The meaning column is reasoned from directory names, the upstream README, and existing repository notes. It is not asserted from reading file contents. Specialized subsystems are described conservatively.

### osfmk (Mach lane)

| Subdirectory | Bridge-relevant meaning (inference) |
| --- | --- |
| `arm`, `arm64`, `i386`, `x86_64` | Architecture-specific code; `arm`/`arm64` are the primary ARM-sensitive study points. |
| `machine` | Machine-dependent abstraction glue between common and architecture code. |
| `kern` | Core Mach kernel: tasks, threads, scheduling, and related primitives; bridge-critical. |
| `ipc` | Mach IPC: ports and messages; bridge-critical. |
| `vm` | Mach virtual memory and address-space concepts; architecture-sensitive; bridge-relevant. |
| `mach`, `mach_debug` | Mach interface definitions (MIG) and Mach debug interfaces. |
| `voucher`, `bank` | Mach voucher passing and resource-accounting (bank) subsystems. |
| `atm` | Activity trace monitoring subsystem. |
| `corpses` | Process corpse and diagnostics infrastructure. |
| `default_pager` | Virtual-memory pager support. |
| `device` | Mach device interface. |
| `console` | Kernel console output path. |
| `kdp`, `kperf` | Kernel debug protocol and kernel performance sampling. |
| `libsa`, `kextd` | Kernel startup/link support and kext-loading-related glue. |
| `corecrypto`, `prng` | Cryptographic primitive support and random-number generation. |
| `UserNotification`, `gssd`, `lockd` | In-kernel support for user notification, GSS, and lock daemons. |
| `conf`, `man`, `tests` | Build configuration metadata, documentation, and in-tree tests (not runtime behavior). |

### bsd (Unix-facing lane)

| Subdirectory | Bridge-relevant meaning (inference) |
| --- | --- |
| `arm`, `i386`, `machine` | Architecture-specific and machine-dependent BSD glue. |
| `kern` | BSD kernel core: process model and syscall implementation; bridge-relevant to the userland boundary. |
| `sys` | BSD system headers; syscall/ABI-facing surface connecting to `libsyscall` and userland. |
| `vfs`, `miscfs`, `nfs` | Virtual filesystem layer, miscellaneous filesystems, and NFS. |
| `net`, `netinet`, `netinet6`, `netkey` | Networking stack: link layer, IPv4, IPv6, and key management. |
| `skywalk` | Skywalk networking subsystem. |
| `security`, `bsm` | MAC/security policy surfaces and Basic Security Module (audit). |
| `dev` | BSD device layer. |
| `pthread` | Kernel-side pthread support. |
| `crypto`, `uuid` | BSD crypto support and UUID support. |
| `libkern` | BSD-side libkern glue (distinct from the top-level XNU `libkern` area). |
| `uxkern` | Unix/kernel bridging glue. |
| `vm` | BSD VM glue bridging to Mach VM. |
| `pgo`, `conf`, `man`, `tests` | Profile-guided-optimization support, build configuration, documentation, and tests. |

### pexpert (platform lane)

| Subdirectory | Bridge-relevant meaning (inference) |
| --- | --- |
| `arm`, `i386` | Architecture-specific platform code; `arm` is a high-priority ARM platform-hook study point. |
| `gen` | Generic platform-expert code; likely DeviceTree and boot-argument context (see stop lines). |
| `pexpert` | Platform-expert headers. |
| `conf` | Build configuration metadata. |

### iokit (IOKit lane)

| Subdirectory | Bridge-relevant meaning (inference) |
| --- | --- |
| `Kernel` | IOKit kernel implementation area; connects to existing `IOService`, `IORegistry`, and matching notes. |
| `Families` | IOKit driver-family definitions; part of the matching surface. |
| `IOKit` | IOKit public headers. |
| `DriverKit` | DriverKit-facing support; connects to `knowledge/platform/driverkit-bridge-boundary.md`. |
| `IOKitUser`, `System`, `bsddev` | User-space IOKit support, system glue, and the BSD-device bridge. |
| `Exclaves` | Exclaves isolation support (meaning described conservatively). |
| `Examples`, `Tests`, `conf` | Example drivers, tests, and build configuration. |

### Cross-lane

- Every lane exposes `conf` (build configuration) and architecture directories, so the architecture-specific bridge surface is spread across `osfmk`, `bsd`, and `pexpert`, not isolated in one place.
- `pexpert/arm` and `osfmk/arm`, `osfmk/arm64` are the narrowest first-level entry points for later ARM-specific study.

## Unknowns

- No per-file inventory exists under any lane yet; only first-level subdirectories are recorded.
- The ARM-specific file subset inside `arm`, `arm64`, and `pexpert/arm` is not identified.
- Directory meanings are inferred from names and public README language, not from reading source; specialized subsystems (`atm`, `bank`, `uxkern`, `skywalk`, `Exclaves`) are not behavior-verified here.
- The mapping from tag `xnu-11417.140.69` to a running macOS `15.6` binary is a manifest-level fact, not verified against an installed release in this workspace.
- `libkern`, `libsyscall`, `security`, `san`, and other top-level XNU areas outside the four lanes are not inventoried in this note.

## Related

- Related notes: `knowledge/platform/xnu-osfmk-mach-lane.md`, `knowledge/platform/xnu-bsd-lane.md`, `knowledge/platform/xnu-pexpert-lane.md`, `knowledge/platform/xnu-iokit-lane.md`, `knowledge/platform/xnu-official-source-reference.md`, `knowledge/platform/xnu-source-study-plan.md`, `knowledge/platform/macos-kernel-layer-map.md`
- Related planning: `planning/BRIDGE_READINESS_GAPS.md`, `planning/ARM_BRIDGE_READINESS.md`

## Stop Lines

Stop before:

- copying XNU source trees or file contents into this repository;
- interpreting file-level behavior from a directory name;
- claiming this source tag equals macOS `15.6` runtime behavior without a release-binary artifact;
- turning any inventory entry into build, boot, patch, or hardware-enablement guidance.

## Next Work

- Add a per-lane file-level inventory only for one narrow ARM-relevant path at a time (for example `pexpert/arm`).
- Draft a Mach concept map for `osfmk/kern`, `osfmk/ipc`, and `osfmk/vm`.
- Link one `iokit/Kernel` path each to `IOService`, `IORegistry`, and matching once a per-file inventory exists.

## Sources

- External reference (mapping): `https://raw.githubusercontent.com/apple-oss-distributions/distribution-macOS/macos-156/release.json`
- External reference (listings): `https://api.github.com/repos/apple-oss-distributions/xnu/contents/{osfmk,bsd,pexpert,iokit}?ref=xnu-11417.140.69`
- Repository tags reference: `https://api.github.com/repos/apple-oss-distributions/xnu/tags`
- Official source reference note: `knowledge/platform/xnu-official-source-reference.md`
