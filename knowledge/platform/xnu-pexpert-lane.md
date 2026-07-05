# XNU pexpert Platform Lane

## Summary

`pexpert` is the XNU lane for platform-specific study. For bridge readiness, it is one of the most important source areas because it is where platform assumptions, low-level hooks, and architecture-sensitive details are likely to connect boot, hardware identity, interrupts, atomics, and later service publication.

## Context

- Official XNU reference: `knowledge/platform/xnu-official-source-reference.md`
- Platform Expert bridge surface: `knowledge/platform/platform-expert-bridge-surface.md`
- Interrupt/timer note: `knowledge/platform/interrupt-timer-source-needed.md`
- SoC dependency map: `knowledge/platform/arm-soc-dependency-map.md`
- Official source area: `https://github.com/apple-oss-distributions/xnu/tree/main/pexpert`

## Bridge-Relevant Questions

| Question | Why It Matters |
| --- | --- |
| Which platform hooks exist before IOKit matching? | A bridge may need to expose or emulate equivalent platform facts. |
| Which `pexpert` code is architecture-specific? | Identifies ARM-sensitive study points. |
| Which interrupt and timer concepts appear here versus elsewhere? | Routes event/time research correctly. |
| Which Platform Expert facts become IORegistry or DeviceTree context? | Connects source study to reduced topology evidence. |
| Which facts are source-level only versus release-backed metadata? | Prevents source-to-release overclaiming. |

## Current Evidence

- The official XNU repository lists `pexpert` as a top-level source area.
- The official README describes `pexpert` as platform-specific code including interrupt handling and atomics.
- `platform-expert-bridge-surface.md` identifies Platform Expert as a high-priority bridge-readiness surface.
- `arm-soc-dependency-map.md` identifies interrupts, timers, power, storage, USB, display, networking, and platform identity as SoC dependencies.

## Inferences

- `pexpert` should be one of the first XNU lanes studied after the high-level source reference.
- Platform Expert source study can give structure to DeviceTree fixture planning without committing raw properties.
- Interrupt/timer notes should cite `pexpert` only after a file-level inventory exists.

## Unknowns

- No `pexpert` file-level inventory exists.
- No source-backed Platform Expert behavior note exists.
- The relationship between `pexpert`, `IOPlatformExpertDevice`, and IORegistry publication is unresolved.
- Version mapping to macOS release artifacts is unresolved.

## Next Work

- Inventory first-level `pexpert` paths.
- Identify ARM-relevant `pexpert` source paths without interpreting behavior.
- Connect source paths to Platform Expert and DeviceTree notes.

## Sources

- `knowledge/platform/xnu-official-source-reference.md`
- `knowledge/platform/platform-expert-bridge-surface.md`
- `knowledge/platform/interrupt-timer-source-needed.md`
- `knowledge/platform/arm-soc-dependency-map.md`
- https://github.com/apple-oss-distributions/xnu/tree/main/pexpert
