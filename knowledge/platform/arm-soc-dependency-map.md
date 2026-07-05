# ARM SoC Dependency Map

## Summary

An ARM processor is part of a larger SoC and platform. For ARM bridge-readiness research, the dependency map must include platform identity, memory and interrupt assumptions, timers, power management, storage, USB, display, networking, and service publication. CPU architecture alone is not enough evidence for a credible bridge design.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- Controller note: `knowledge/platform/arm-controller-prerequisites.md`
- Identity note: `knowledge/platform/arm-platform-identity-boundaries.md`
- Handoff note: `knowledge/platform/arm-boot-to-iokit-handoff.md`
- Controller backlog: `knowledge/platform/controller-family-backlog.md`
- Review guide: `docs/guidelines/platform-review-checklist.md`

## Dependency Areas

| Area | Research Need | First Evidence |
| --- | --- | --- |
| Platform identity | How the platform is named and organized. | DeviceTree/topology notes. |
| Boot handoff | How release-owned boot metadata leads toward kernel execution. | Boot artifact index. |
| Kernel collections | Where platform-facing driver metadata resides. | Reduced collection/personality metadata. |
| Interrupts and timers | How device events and time sources should be represented. | Public references or source-needed note. |
| Power management | Which state and policy metadata must be excluded or safely reduced. | Redaction-first note. |
| Storage | Which provider and bus metadata can describe boot/storage path expectations. | PCI/NVMe or other storage personality metadata. |
| USB and input | Which provider expectations exist for external and human-interface paths. | USB personality/provider notes. |
| Display | Which metadata can be cataloged without graphics support claims. | Display personality metadata. |
| Networking | Which bus and provider expectations exist without active interface claims. | PCI/USB/networking personality metadata. |

## Observations

- `arm-controller-prerequisites.md` ranks platform identity, interrupts/timers, power management, PCIe, USB, NVMe/storage, display, and networking for ARM bridge-readiness research.
- `controller-family-backlog.md` keeps power, interrupts, timers, display, and networking behind explicit evidence boundaries.
- `arm-platform-identity-boundaries.md` separates DeviceTree context, topology, provider classes, name matches, and family-specific keys.
- `arm-boot-to-iokit-handoff.md` separates boot artifacts, kernel collections, platform identity, service publication, and driver matching.

## Inferences

- The first ARM dependency map should be metadata-only because the project does not yet have target runtime evidence.
- Interrupt, timer, and power-management questions need source acquisition or public references before deeper notes.
- Storage and USB become more useful after release-backed personality metadata exists.
- Display should remain late-stage because metadata is easy to overread as graphics support.

## Research Use

When a future target processor is chosen:

1. Fill this map with target-specific knowns, unknowns, and missing artifact classes.
2. Keep each dependency at its evidence level.
3. Avoid treating one working dependency as proof of platform viability.
4. Promote only reduced and redacted facts into shared notes.

## Unknowns

- No target SoC is selected in this repository.
- No interrupt, timer, or power-management source plan has been written.
- No reduced storage, USB, display, or networking release-backed datasets exist yet.

## Sources

- `knowledge/platform/arm-macos-bringup-research.md`
- `knowledge/platform/arm-controller-prerequisites.md`
- `knowledge/platform/arm-platform-identity-boundaries.md`
- `knowledge/platform/arm-boot-to-iokit-handoff.md`
- `knowledge/platform/controller-family-backlog.md`
- `docs/guidelines/platform-review-checklist.md`
