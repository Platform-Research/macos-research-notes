# DriverKit Bridge Boundary

## Summary

DriverKit matters to bridge readiness because some driver logic and matching-related metadata may live outside kernel-resident kexts. This note keeps DriverKit as a boundary to map, not as proof that a user-space driver is usable or reachable.

## Context

- Userland boundary map: `knowledge/platform/userland-boundary-map.md`
- Platform metadata note: `knowledge/platform/platform-facing-metadata.md`
- Kext personality note: `knowledge/iokit/kext-personalities.md`
- PCI device note: `knowledge/iokit/IOPCIDevice.md`
- Review guide: `docs/guidelines/platform-review-checklist.md`

## Boundary Questions

| Question | Why It Matters | Current State |
| --- | --- | --- |
| Which DriverKit bundle metadata parallels kext personality metadata? | A bridge may need to compare kext and dext expectations. | Schema supports bundle type, but examples are sparse. |
| Which provider classes appear in DriverKit-facing records? | Provider expectations may cross kernel/user boundary. | Source-needed. |
| Which entitlements are metadata-only versus access-control evidence? | Avoids treating entitlement strings as reachable behavior. | Redaction policy needed. |
| How do DriverKit services appear in IORegistry? | Connects user-space drivers to service publication. | Separate example needed. |
| Which release artifacts contain DriverKit metadata? | Needed for release-backed comparison. | Acquisition blocked. |

## Observations

- `platform-facing-metadata.md` records DriverKit and kernel-resident matching differences as an unknown.
- `published-ioservice-concept.md` records DriverKit service publication relative to kernel-resident `IOService` objects as needing a separate example.
- `IOPCIDevice.md` records runtime PCI entries exposing `IOServiceDEXTEntitlements`, but treats runtime output as bounded host evidence.
- `platform-review-checklist.md` says user-client, entitlement, and power-management values are summarized or omitted unless specifically scoped.

## Inferences

- DriverKit should be mapped after kext personality extraction patterns are stable, because the comparison needs a known baseline.
- Entitlements should be treated as sensitive metadata and not as evidence of reachable behavior.
- A future bridge design may need to expose kernel services in a shape DriverKit components expect, but the repository is not ready to specify that shape.

## Unknowns

- No reduced DriverKit personality dataset exists.
- No DriverKit service publication fixture exists.
- No entitlement redaction policy exists.
- No release-backed DriverKit comparison exists.

## Next Work

- Add DriverKit fields to reduced metadata only after a verified source exposes them.
- Define an entitlement redaction rule before committing examples.
- Compare DriverKit and kext personality records once both shapes are available.

## Sources

- `knowledge/platform/userland-boundary-map.md`
- `knowledge/platform/platform-facing-metadata.md`
- `knowledge/platform/published-ioservice-concept.md`
- `knowledge/iokit/kext-personalities.md`
- `knowledge/iokit/IOPCIDevice.md`
- `docs/guidelines/platform-review-checklist.md`
