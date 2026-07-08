# Registry Plane Glossary

## Summary

A registry plane is a named relationship view over I/O Registry objects. The same object may appear in different planes, so platform evidence should always record the plane before interpreting parent-child relationships.

## Context

- Related registry note: `knowledge/iokit/IORegistry.md`
- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related fixture: `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 215

## Definition

Registry plane: a named topology view in the I/O Registry that defines how entries are related for a particular purpose, such as the general `IOService` plane or family-specific planes.

## Observations

- `IORegistry.md` records that registry planes are different views of relationships between the same registry objects.
- `IORegistry.md` records that the default `ioreg` plane is `IOService`.
- `topology-vocabulary.md` includes `plane` as a preferred reduced field.

## Use

- Record the plane before describing ancestry.
- Avoid comparing paths across planes as if they were the same relationship.
- Treat plane-specific topology as context, not capability.

## Sources

- `knowledge/iokit/IORegistry.md`
- `knowledge/platform/topology-vocabulary.md`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
