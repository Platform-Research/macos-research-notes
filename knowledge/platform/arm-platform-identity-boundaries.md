# ARM Platform Identity Boundaries

## Summary

ARM platform identity research should distinguish DeviceTree context, IORegistry topology, provider classes, and personality match keys. These surfaces may describe the same platform from different angles, but they are not interchangeable evidence. Keeping them separate prevents a registry name, provider class, or match key from becoming an unsupported claim that macOS runs on a target ARM processor.

## Context

- Focus note: `knowledge/platform/arm-macos-bringup-research.md`
- DeviceTree note: `knowledge/platform/device-tree-context.md`
- Topology note: `knowledge/platform/topology-vocabulary.md`
- Matching note: `knowledge/platform/matching-path.md`
- Registry note: `knowledge/iokit/IORegistry.md`
- Personality note: `knowledge/iokit/kext-personalities.md`
- Review guide: `docs/guidelines/platform-review-checklist.md`

## Identity Surfaces

| Surface | What It Can Identify | What It Cannot Prove |
| --- | --- | --- |
| DeviceTree plane | Platform organization and naming context when safely reduced | Boot success, property correctness, or compatibility. |
| IORegistry topology | Plane, class, object name, depth, and ancestor context | Stable identity across hosts without provenance. |
| `IOProviderClass` | Provider class expected by a personality | Runtime attachment or selected driver. |
| `IONameMatch` | Name-based matching expectation | That a matching provider exists on a target processor. |
| Family-specific keys | Bus-specific identity hints such as PCI match strings | Hardware support or driver behavior. |

## Observations

- `device-tree-context.md` records `IODeviceTree` as a relevant registry plane while avoiding raw DeviceTree data.
- `topology-vocabulary.md` prefers reduced fields such as `object_name`, `class_name`, `plane`, and `depth`.
- `IORegistry.md` records that registry planes are different relationship views over registry objects.
- `kext-personalities.md` records that personalities can use `IOProviderClass`, `IONameMatch`, `IOMatchCategory`, `IOProbeScore`, and family-specific keys.
- `platform-review-checklist.md` requires raw properties, local identifiers, blobs, and unsupported enablement claims to stay out of promoted notes.

## Inferences

- DeviceTree context is likely central to ARM platform research, but the first committed evidence should be topology-only until property redaction rules exist.
- `IOProviderClass` and `IONameMatch` are useful for mapping expected platform services, but they do not establish that a target ARM platform supplies those services.
- Family-specific keys should be interpreted only inside their bus context; a PCI key, USB key, or name match is not a general platform identity.
- Release-backed comparison needs equivalent identity surfaces from both releases before claiming a platform identity changed.

## Research Use

When adding ARM platform identity knowledge:

1. Name the identity surface.
2. Record the source release, host, command, or artifact path.
3. Avoid mixing DeviceTree context with IOService attachment evidence.
4. Keep object names under redaction review.
5. Use provider and personality metadata as expectations, not observations of a target ARM processor.

## Unknowns

- Which `IODeviceTree` object names are safe to commit is unknown.
- The project does not yet have a DeviceTree-specific schema or fixture.
- The relationship between DeviceTree naming and `IONameMatch` needs release-backed examples.
- It is not yet known which platform identity fields are stable across macOS releases.

## Sources

- `knowledge/platform/arm-macos-bringup-research.md`
- `knowledge/platform/device-tree-context.md`
- `knowledge/platform/topology-vocabulary.md`
- `knowledge/platform/matching-path.md`
- `knowledge/iokit/IORegistry.md`
- `knowledge/iokit/kext-personalities.md`
- `docs/guidelines/platform-review-checklist.md`
