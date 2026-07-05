# XNU IOKit Lane

## Summary

`iokit` is the XNU lane that connects kernel source study to the repository's strongest existing knowledge: `IOService`, IORegistry, kext personalities, provider matching, and user clients. For bridge readiness, this lane should explain where the source-level IOKit implementation backs the metadata model already being built.

## Context

- Official XNU reference: `knowledge/platform/xnu-official-source-reference.md`
- IOKit service note: `knowledge/iokit/IOService.md`
- IORegistry note: `knowledge/iokit/IORegistry.md`
- Personality note: `knowledge/iokit/kext-personalities.md`
- Matching path: `knowledge/platform/matching-path.md`
- Official source area: `https://github.com/apple-oss-distributions/xnu/tree/main/iokit`

## Bridge-Relevant Questions

| Question | Why It Matters |
| --- | --- |
| Where are service publication and matching implemented? | Connects metadata expectations to kernel behavior. |
| Where are registry planes and entries implemented? | Connects topology fixtures to source concepts. |
| Which source areas define user clients? | Bridges kernel services to user-space consumers. |
| Which parts belong to libkern versus IOKit? | Prevents mixing object runtime support with service semantics. |
| Which concepts are stable enough to cite without release binary evidence? | Keeps source notes scoped. |

## Current Evidence

- The official XNU repository lists `iokit` as a top-level source area.
- The official README lists `libkern` separately as C++ IOKit library code for drivers and kexts.
- Existing notes already document `IOService`, `IORegistry`, kext personalities, provider discovery, matching path, and published IOService concepts.

## Inferences

- `iokit` source study should be grounded in the existing IOKit notes rather than starting from scratch.
- The first source-backed IOKit note should map source paths to existing concepts such as service publication, registry entry, matching, and user client creation.
- `libkern` deserves a separate note because it supports IOKit but is not identical to IOKit service semantics.

## Unknowns

- No `iokit` file-level inventory exists.
- No source path has been linked to `IOService` lifecycle behavior.
- No source path has been linked to IORegistry plane implementation.
- No source-backed user-client boundary exists.

## Next Work

- Inventory first-level `iokit` source paths.
- Link one source path each to `IOService`, `IORegistry`, matching, and user-client concepts.
- Add a `libkern` support-lane note.

## Sources

- `knowledge/platform/xnu-official-source-reference.md`
- `knowledge/iokit/IOService.md`
- `knowledge/iokit/IORegistry.md`
- `knowledge/iokit/kext-personalities.md`
- `knowledge/platform/matching-path.md`
- https://github.com/apple-oss-distributions/xnu/tree/main/iokit
