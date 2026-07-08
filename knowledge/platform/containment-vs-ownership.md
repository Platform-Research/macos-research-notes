# Containment vs Ownership

## Summary

Reduced topology can describe containment-like placement in a registry plane, but it should not imply ownership. A parent/child path says where an object appears in a plane; ownership needs stronger service, bundle, or lifecycle evidence.

## Context

- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related registry note: `knowledge/iokit/IORegistry.md`
- Related fixture: `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 243

## Safe Claims

- "appears under"
- "has parent/ancestor context"
- "is represented at depth"

## Avoid

- "owns"
- "controls"
- "drives"
- "requires"

## Sources

- `knowledge/platform/topology-vocabulary.md`
- `knowledge/iokit/IORegistry.md`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
