# ARM Controller Prerequisites

## Summary

An ARM bridge is not only a CPU question. The useful research unit is a platform dependency map: which buses, controllers, provider classes, and matching keys must be understood before any processor-specific design or experiment can be evaluated. This note ranks controller-family knowledge by how directly it supports ARM bridge-readiness research.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- Controller backlog: `knowledge/platform/controller-family-backlog.md`
- PCIe note: `knowledge/platform/pcie-metadata-coverage.md`
- Matching note: `knowledge/platform/matching-path.md`
- IOPCIDevice note: `knowledge/iokit/IOPCIDevice.md`
- Review guide: `docs/guidelines/platform-review-checklist.md`

## Priority Families

| Family | Why It Matters For ARM Bring-Up | First Safe Evidence | Boundary |
| --- | --- | --- | --- |
| Platform identity | Establishes how the platform is named and organized before drivers match. | DeviceTree and topology notes | No raw properties yet. |
| Interrupts and timers | Needed to reason about scheduling and device events. | Public references or reduced metadata | No undocumented behavior claim. |
| Power management | Shapes startup, sleep, and device state expectations. | Redaction-first note | No raw `IOPowerManagement` values. |
| PCIe | Often connects storage, networking, bridges, and external controllers. | `IOPCIDevice`, PCI match parser, PCIe metadata note | No support claim from match tokens. |
| USB | Useful for input, recovery, external devices, and controller mapping. | Provider/personality metadata | No raw registry properties. |
| NVMe/storage | Needed for storage path questions after platform identity. | PCI and personality metadata | No driver availability claim. |
| Display/GPU | Important for usability but risky to overclaim. | Personality metadata and release provenance | No graphics support or Metal claim. |
| Networking | Useful but should follow bus and provider mapping. | PCI or USB personality metadata | No active interface claim. |

## Observations

- `controller-family-backlog.md` already ranks PCIe as the best-covered family and keeps USB, NVMe, display, networking, power, interrupts, and timers behind evidence gates.
- `pcie-metadata-coverage.md` records provider class, personality keys, registry identity, candidate joins, and release comparison as separate PCIe surfaces.
- `IOPCIDevice.md` records PCI match keys and registry identity fields but does not prove runtime attachment.
- `matching-path.md` keeps family-specific match keys separate from candidate joins and runtime attachment.
- `platform-review-checklist.md` blocks support-quality and hardware enablement claims from metadata-only evidence.

## Inferences

- The ARM research path should start with platform identity, interrupts/timers, and power-management questions before deep endpoint-driver interpretation.
- PCIe remains the best current controller family for tooling because the repository already has parser and metadata notes.
- Display/GPU work should stay metadata-only until the boot, platform identity, and controller prerequisites are better mapped.
- USB and storage can become early practical families once release-backed personality examples exist.

## Research Use

Use this priority order when choosing the next ARM-focused note:

1. Platform identity and DeviceTree context.
2. Boot and kernel collection metadata.
3. Interrupt/timer and power-management source plans.
4. PCIe metadata and normalized identity.
5. USB and storage provider expectations.
6. Display, networking, and user-facing services after the base map is clearer.

## Unknowns

- The repository does not yet have source-backed interrupt or timer notes.
- Power-management metadata needs a redaction policy before examples are safe.
- USB and NVMe examples need release-backed personality records.
- The controller dependencies of a specific ARM target processor are not represented in this repository.

## Sources

- `knowledge/platform/arm-macos-bringup-research.md`
- `knowledge/platform/controller-family-backlog.md`
- `knowledge/platform/pcie-metadata-coverage.md`
- `knowledge/platform/matching-path.md`
- `knowledge/iokit/IOPCIDevice.md`
- `docs/guidelines/platform-review-checklist.md`
