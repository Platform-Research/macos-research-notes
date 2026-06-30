# Platform Research Direction

Use this note to choose research sessions that build toward deeper platform understanding without turning early work into unsupported hardware claims.

## Direction Filter

Prefer work that explains one of these layers:

- boot flow and handoff boundaries;
- kernel collection and extension loading metadata;
- platform and device-tree assumptions;
- IOKit provider, matching, and registry ancestry;
- hardware controller dependencies such as PCIe, USB, NVMe, display, timers, interrupts, and power management;
- release-to-release changes in platform-facing metadata.

Defer work that requires patching, unsupported boot attempts, or claims about hardware enablement before the artifact trail exists.

## Good Next Questions

- Which platform-facing kexts or dexts appear in a reduced release inventory?
- Which `IOProviderClass` values form the first-level hardware matching surface?
- Which PCI match keys appear in storage, networking, display, and bridge families?
- Which registry ancestors are needed to understand a device attachment path?
- Which metadata changes between releases affect matching, probing, or platform services?
- Which boot or kernel collection artifacts can be indexed without committing raw payloads?

## Suggested Session Order

1. Finish one verified release source acquisition path.
2. Produce one reduced kext or DriverKit personality dataset.
3. Join personality records to provider-class notes.
4. Add registry ancestry fixtures for one bounded device family.
5. Create atomic notes for platform-facing classes and services under `knowledge/platform/`.
6. Compare the same artifact class across releases only after both sides have reduced metadata.

## Current Knowledge Entry Point

- `knowledge/platform/platform-facing-metadata.md`

## Evidence Rule

Each session should leave one of:

- a reduced dataset;
- a schema or fixture that validates a dataset shape;
- an atomic knowledge note tied to paths, commands, or public references;
- a report that preserves unknowns instead of inferring behavior.

## Stop Line

Stop and rescope when the next step would require a boot modification, kernel patch, binary patch, or unsupported hardware claim.
