# ARM macOS Bring-Up Research Focus

## Summary

The platform research objective is to understand macOS and Darwin deeply enough to support a future bridge between macOS/kernel layers and an ARM environment. This note keeps that goal focused on platform assumptions, boot prerequisites, kernel collection metadata, DeviceTree context, IOKit matching, and controller dependencies. It does not claim boot viability, hardware enablement, or support on any specific ARM processor.

## Context

- Current next-work file: `planning/NEXT.md`
- Platform direction: `planning/PLATFORM_DIRECTION.md`
- Review checklist: `docs/guidelines/platform-review-checklist.md`
- Related platform notes: `knowledge/platform/boot-artifacts.md`, `knowledge/platform/kernel-collections.md`, `knowledge/platform/device-tree-context.md`, `knowledge/platform/platform-facing-metadata.md`, `knowledge/platform/platform-role-vs-driver-behavior.md`
- Related IOKit notes: `knowledge/iokit/IORegistry.md`, `knowledge/iokit/IOService.md`, `knowledge/iokit/kext-personalities.md`

## Research Target

The target is not "make a boot claim" first. The target is to build a reproducible map of the assumptions macOS expects from an ARM platform:

- which boot artifacts and handoff metadata must exist before kernel execution can be studied;
- which kernel collection and extension metadata exposes platform-facing services;
- which DeviceTree or registry-plane facts describe platform identity without raw dumps;
- which IOKit personalities expect specific providers, names, buses, or family-specific match keys;
- which controller families are prerequisites for a credible bridge design;
- which reduced datasets can be compared across macOS releases.

## Priority Stack

| Layer | First Question | Evidence Class | Boundary |
| --- | --- | --- | --- |
| Boot handoff | What metadata must exist before the kernel can publish services? | Boot artifact notes and public references | No boot viability claim. |
| Kernel collections | Where is platform-facing driver metadata found? | Reduced collection or personality metadata | No binary patching claim. |
| DeviceTree context | What platform identity can be represented safely? | Plane, class, depth, and source provenance | No raw property dump. |
| IOKit matching | Which providers and personalities define expected services? | `IOProviderClass`, `IONameMatch`, `IOProbeScore`, `IOMatchCategory`, family keys | No runtime attachment claim. |
| Controller families | Which buses and controllers are essential to map first? | PCIe, USB, NVMe/storage, display, networking, power notes | No support-quality claim. |
| Release comparison | What changed between releases in platform-facing metadata? | Equivalent reduced artifacts on both sides | No inference from missing sources. |

## Current Best Next Knowledge

When `15.6` acquisition is blocked, prefer notes that sharpen ARM bridge-readiness prerequisites:

1. Boot-to-IOKit handoff boundaries.
2. Kernel collection metadata location for platform-facing personalities.
3. DeviceTree versus IOService identity boundaries.
4. Bus/controller/endpoint vocabulary.
5. Generic versus family-specific matching keys.
6. Release-backed artifact requirements for ARM platform comparison.

These topics directly support the ARM objective because they identify what must be understood before any processor-specific experiment is meaningful.

## Observations

- `planning/NEXT.md` currently blocks release-diff work until a verified `15.6` source artifact exists.
- `platform-facing-metadata.md` defines reduced metadata as the bridge between boot artifacts, kernel collections, IOKit personalities, registry ancestry, and controller classes.
- `device-tree-context.md` records `IODeviceTree` as a relevant registry plane but keeps raw DeviceTree evidence out of committed data until redaction rules exist.
- `provider-discovery-vs-startup.md` separates provider publication from probe, attachment, and startup.
- `platform-review-checklist.md` requires boot viability, patching, hardware enablement, and support-quality claims to stay out of notes unless bounded evidence exists.

## Inferences

- For the ARM goal, the most useful immediate work is not a driver claim; it is a dependency map of platform assumptions.
- DeviceTree and boot-handoff research should come before deeper controller-family interpretation because ARM platform identity is established before IOKit matching can be trusted.
- IOKit personalities still matter early because they expose the providers and family-specific metadata macOS expects once services are published.
- Release-backed metadata remains important because a single host or fixture cannot establish which platform assumptions are stable across macOS versions.

## Stop Lines

Stop and rescope when a task would require:

- boot modification;
- kernel or kernel collection patching;
- binary patching;
- unsupported hardware enablement claims;
- committing raw installers, raw kernel collections, raw IORegistry dumps, or raw DeviceTree properties;
- treating reduced metadata as proof that macOS runs on a specific ARM processor.

## Next Work

- Update `planning/NEXT.md` so blocked acquisition work falls back to ARM bridge-readiness prerequisite notes.
- Prefer platform queue cycles that clarify boot, DeviceTree, kernel collection, IOKit matching, or controller prerequisites.
- Keep `15.6` source acquisition as the artifact unblocker for release-backed comparison.

## Sources

- `planning/NEXT.md`
- `planning/PLATFORM_DIRECTION.md`
- `docs/guidelines/platform-review-checklist.md`
- `knowledge/platform/boot-artifacts.md`
- `knowledge/platform/kernel-collections.md`
- `knowledge/platform/device-tree-context.md`
- `knowledge/platform/platform-facing-metadata.md`
- `knowledge/platform/platform-role-vs-driver-behavior.md`
