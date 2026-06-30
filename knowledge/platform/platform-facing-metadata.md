# Platform-Facing Metadata

## Summary

Platform-facing metadata is the reduced evidence layer that connects boot artifacts, kernel collections, IOKit personalities, registry ancestry, and hardware controller classes. It matters because platform research should first identify what macOS expects from providers, registry topology, and controller families before drawing conclusions about hardware behavior.

## Context

- Planning guide: `planning/PLATFORM_DIRECTION.md`
- Related notes: `knowledge/iokit/IORegistry.md`, `knowledge/iokit/IOService.md`, `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/kext-personalities.md`
- Related platform notes: `knowledge/platform/matching-path.md`
- Related experiments: `experiments/registry-ancestor-capture/README.md`, `experiments/registry-personality-join/README.md`, `experiments/pci-match-string-parser/README.md`
- Related tools: `tools/ioreg-inventory/`, `tools/kext-personality-inventory/`, `tools/provider-class-join/`, `tools/pci-match-parse/`

## Observations

- `IOService` notes record that matching begins from provider publication and personality dictionaries.
- `IORegistry` notes record that the registry is a live provider/client graph and that paths should name the registry plane.
- `IOPCIDevice` notes record PCI-specific personality keys such as `IOPCIMatch`, `IOPCIPrimaryMatch`, `IOPCISecondaryMatch`, and `IOPCIClassMatch`.
- Registry ancestor capture defines a topology-only rule: preserve object names, classes, depth, plane, and ancestor paths while dropping property dictionaries and blobs.
- Provider-class join tooling creates candidate edges from topology `class_name` values to personality `IOProviderClass` values and explicitly avoids runtime attachment claims.
- PCI match parsing normalizes value and optional mask tokens but does not evaluate whether a token matches a registry device.

## First Metadata Surfaces

The first platform-facing inventory should prefer these surfaces:

- release and source provenance;
- bundle identifier and bundle type;
- personality name;
- `IOClass`;
- `IOProviderClass`;
- `IONameMatch`;
- `IOMatchCategory`;
- `IOProbeScore`;
- PCI match keys when present;
- topology class path and registry plane;
- ancestor class names for provider context.

## Inferences

- Platform research can progress without boot modifications by comparing reduced metadata from releases, personalities, and registry topology.
- Provider-class joins are useful as candidate edges, but ancestor context is needed to reduce false positives.
- PCI match keys are high-value because they connect personality metadata to controller-facing registry identities.
- Boot and kernel collection research should first produce indexes and provenance notes before any binary interpretation.
- A release diff should compare platform-facing metadata only after both releases have equivalent reduced inputs.

## Unknowns

- Which platform-facing services are stable across macOS releases is not known yet.
- Which ancestor depth is sufficient for reliable provider-class joins is not known yet.
- The project does not yet have reduced boot or kernel collection indexes.
- DriverKit and kernel-resident matching differences still need side-by-side examples.
- Runtime attachment still needs separate evidence from personality matching.

## Next Questions

- Which reduced `15.6` personality records expose platform-facing provider classes?
- Which controller families appear first in reduced kext or DriverKit personality data?
- Which registry ancestor fields best distinguish broad provider-class candidates?
- Which kernel collection or boot metadata can be indexed without committing raw payloads?
- Which release-to-release metadata changes affect matching or platform services?

## Sources

- `planning/PLATFORM_DIRECTION.md`
- `knowledge/iokit/IOService.md`
- `knowledge/iokit/IORegistry.md`
- `knowledge/iokit/IOPCIDevice.md`
- `experiments/registry-ancestor-capture/README.md`
- `experiments/registry-personality-join/README.md`
- `experiments/pci-match-string-parser/README.md`
- `tools/provider-class-join/README.md`
