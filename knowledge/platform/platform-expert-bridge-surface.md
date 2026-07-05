# Platform Expert Bridge Surface

## Summary

Platform Expert is a high-priority bridge-readiness surface because it sits near the root of platform identity and IOKit service publication. The repository does not yet have enough source-backed detail to describe Platform Expert behavior deeply, but existing topology fixtures show why it should be treated as a first-class research target.

## Context

- Kernel layer map: `knowledge/platform/macos-kernel-layer-map.md`
- DeviceTree context: `knowledge/platform/device-tree-context.md`
- Topology vocabulary: `knowledge/platform/topology-vocabulary.md`
- Published service note: `knowledge/platform/published-ioservice-concept.md`
- Topology fixture: `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- Registry note: `knowledge/iokit/IORegistry.md`

## Current Evidence

- The topology fixture contains `Root` as `IORegistryEntry` at depth `0`.
- The topology fixture contains `J504AP` as `IOPlatformExpertDevice` at depth `1` in the `IOService` plane.
- `published-ioservice-concept.md` explicitly notes that this fixture omits property dictionaries.
- `device-tree-context.md` records `IODeviceTree` as a relevant registry plane but does not commit raw DeviceTree data.
- `topology-vocabulary.md` recommends reduced topology fields before property-bearing registry evidence.

## Bridge-Relevant Questions

| Question | Why It Matters | Current State |
| --- | --- | --- |
| What does Platform Expert publish first? | A bridge may need to expose equivalent root platform facts. | Source-needed. |
| Which identity fields belong to Platform Expert versus DeviceTree? | Prevents mixing topology and property evidence. | Source-needed. |
| Which reduced Platform Expert fields are safe to commit? | Needed before examples expand. | Topology-only fixture exists. |
| How do provider services descend from Platform Expert context? | Connects platform identity to IOKit matching. | Ancestor model missing. |
| Which facts are release-backed versus local-runtime? | Prevents host-specific overreach. | Release artifact missing. |

## Inferences

- Platform Expert should be studied before interpreting deeper controller-family examples because it anchors platform identity.
- The first bridge-ready Platform Expert output should be a topology-only note or fixture plan, not a property dump.
- A future bridge may need to expose or emulate Platform Expert-shaped identity, but the repository is not ready to say which fields.

## Unknowns

- The project has no Platform Expert source note.
- The project has no Platform Expert property redaction policy.
- The relationship between `IOPlatformExpertDevice`, `IODeviceTree`, and later provider classes is not yet mapped.
- No release-backed Platform Expert metadata exists.

## Stop Lines

Stop before:

- committing raw registry or DeviceTree properties;
- treating object names as stable cross-target identity;
- claiming a target can satisfy Platform Expert expectations;
- writing implementation guidance without source-backed behavior.

## Sources

- `knowledge/platform/macos-kernel-layer-map.md`
- `knowledge/platform/device-tree-context.md`
- `knowledge/platform/topology-vocabulary.md`
- `knowledge/platform/published-ioservice-concept.md`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- `knowledge/iokit/IORegistry.md`
