# DeviceTree Fixture Plan

## Summary

DeviceTree context is central to bridge readiness, but the repository should not commit raw DeviceTree or IORegistry property dumps. The first useful fixture should be topology-only and should prove the shape of safe fields before any property-level schema is considered.

## Context

- DeviceTree note: `knowledge/platform/device-tree-context.md`
- Platform Expert note: `knowledge/platform/platform-expert-bridge-surface.md`
- Topology vocabulary: `knowledge/platform/topology-vocabulary.md`
- IORegistry note: `knowledge/iokit/IORegistry.md`
- IORegistry schema: `datasets/schemas/ioreg-inventory.schema.json`
- Existing topology fixture: `datasets/fixtures/topology-json/ioreg-topology.fixture.json`

## Proposed Fixture Scope

The first DeviceTree fixture should include only:

- `record_kind`;
- `object_name`, after review;
- `class_name`;
- `plane`;
- `depth`;
- source command;
- host macOS version and build when local;
- redaction policy;
- omitted fields list.

It should omit:

- raw property dictionaries;
- `reg`, memory, interrupt, power, serial, network, or local identifiers;
- binary or hex blobs;
- raw `ioreg` output;
- object IDs treated as stable identifiers.

## Bridge-Relevant Use

A topology-only DeviceTree fixture would help answer:

- which platform identity layers exist before service matching;
- how DeviceTree context relates to the `IOService` plane;
- which ancestor classes are useful without raw properties;
- which later bridge questions need property-level evidence.

## Observations

- `device-tree-context.md` records `IODeviceTree` as relevant but currently fixtureless.
- `topology-vocabulary.md` already prefers plane, class, object name, depth, source command, and redaction metadata.
- `IORegistry.md` records that planes are different relationship views over registry objects.
- `ioreg-inventory.schema.json` already models topology node records.

## Inferences

- The first DeviceTree fixture can probably reuse the topology schema before a DeviceTree-specific schema exists.
- Object names need stricter review in DeviceTree context than in generic examples because platform names may encode target identity.
- Property-level DeviceTree work should wait until a separate redaction schema exists.

## Unknowns

- Which `IODeviceTree` object names are safe enough for committed examples is unresolved.
- The minimum useful depth for a DeviceTree topology fixture is unknown.
- The source command for a fixture has not been chosen in this branch.
- No release-backed DeviceTree data exists.

## Sources

- `knowledge/platform/device-tree-context.md`
- `knowledge/platform/platform-expert-bridge-surface.md`
- `knowledge/platform/topology-vocabulary.md`
- `knowledge/iokit/IORegistry.md`
- `datasets/schemas/ioreg-inventory.schema.json`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
