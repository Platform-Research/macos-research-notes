# Reduced Bus Hierarchy

## Summary

Reduced registry topology can represent bus hierarchy with plane, class, depth, and ancestry fields while omitting device properties. This is enough to describe containment-like structure without committing raw IORegistry output.

## Context

- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related registry note: `knowledge/iokit/IORegistry.md`
- Related schema: `datasets/schemas/ioreg-inventory.schema.json`
- Related fixture: `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 222

## Safe Fields

- `plane`
- `class_name`
- `object_name`, after redaction review
- `depth`
- source command and host/release provenance
- ordered ancestor classes, once schema support exists

## Inferences

- Hierarchy can be represented without raw property dictionaries.
- Depth is useful only with plane context.
- Ancestor classes are preferable to property blobs for first-pass bus research.

## Sources

- `knowledge/platform/topology-vocabulary.md`
- `knowledge/iokit/IORegistry.md`
- `datasets/schemas/ioreg-inventory.schema.json`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
