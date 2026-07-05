# Userland Boundary Map

## Summary

A future macOS/kernel-to-ARM bridge cannot stop at kernel metadata forever. It also needs to understand the userland boundary: how user-space discovers services, opens user clients, loads DriverKit components, and depends on dyld/framework surfaces. This note records the boundary without claiming userland execution.

## Context

- Bridge focus: `knowledge/platform/arm-bridge-readiness.md`
- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- User-client note: `knowledge/iokit/IOUserClient.md`
- Service note: `knowledge/iokit/IOService.md`
- Roadmap: `planning/ROADMAP.md`
- Review guide: `docs/guidelines/platform-review-checklist.md`

## Boundary Surfaces

| Surface | What To Learn | Current State |
| --- | --- | --- |
| IOKit user-space matching | How user space enumerates services. | `IOService.md` mentions matching helpers. |
| User clients | How user-space opens connections to kernel services. | `IOUserClient.md` exists. |
| DriverKit | How user-space drivers relate to kernel services and entitlements. | Schema and notes are sparse. |
| launch services | How system userland reaches stable service state. | Source-needed. |
| dyld shared cache | Which userland frameworks and symbols matter. | Roadmap item only. |
| Framework APIs | Which APIs expose kernel/platform services to userland. | Source-needed. |

## Observations

- `IOService.md` records user-space matching helpers such as `IOServiceMatching()`, `IOServiceNameMatching()`, and `IOServiceGetMatchingServices()`.
- `IOService.md` records that `IOServiceOpen()` requests a connection to a kernel service and calls `IOService::newUserClient` in the kernel.
- `IOUserClient.md` exists as an IOKit knowledge note.
- `ROADMAP.md` names dyld, frameworks, and dyld shared cache metadata as future knowledge-base and artifact-workflow targets.
- `platform-review-checklist.md` says user-client and entitlement values require specific scoping.

## Inferences

- Userland boundary work should follow kernel and IOKit mapping, but it cannot be ignored for bridge readiness.
- User-client metadata is platform-adjacent, not proof of reachable behavior or security surface.
- DriverKit deserves a separate bridge-readiness note because it shifts some driver logic into user space.
- dyld and framework notes are needed before any full macOS environment claim can be evaluated.

## Unknowns

- No launchd, dyld, framework, or DriverKit bridge-readiness notes exist.
- No reduced dyld shared cache metadata exists.
- No userland milestone ladder exists.
- The minimum userland surface needed for a bridge scenario is undecided.

## Next Work

- Add a DriverKit boundary note.
- Add a dyld/framework source-needed note.
- Add a userland milestone ladder only after kernel and IOKit layers are better mapped.

## Sources

- `knowledge/platform/arm-bridge-readiness.md`
- `knowledge/platform/macos-kernel-layer-map.md`
- `knowledge/iokit/IOUserClient.md`
- `knowledge/iokit/IOService.md`
- `planning/ROADMAP.md`
- `docs/guidelines/platform-review-checklist.md`
