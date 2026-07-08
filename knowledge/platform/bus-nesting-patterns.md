# Bus Nesting Patterns

## Summary

Bus nesting is a topology pattern where registry objects form organizing layers before any endpoint device or driver behavior is interpreted. In reduced platform evidence, nesting should be described through plane, class, depth, and ancestry rather than through raw properties or support claims.

## Context

- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related registry note: `knowledge/iokit/IORegistry.md`
- Related fixture: `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- Related experiment: `experiments/registry-ancestor-capture/README.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 203

## Observations

- `IORegistry.md` records that the registry is a live graph of provider/client relationships across named planes.
- `topology-vocabulary.md` recommends reduced fields such as `object_name`, `class_name`, `plane`, and `depth` before committing property-bearing evidence.
- The topology fixture uses `plane` and `depth` to represent a small IOService-plane hierarchy while omitting property dictionaries.
- The registry ancestor experiment records that raw `ioreg -t` output can include properties and therefore needs bounded parsing before commit.

## Inferences

- Bus nesting is suggested when multiple intermediate services appear between the root/platform expert area and endpoint-like services.
- Class ancestry is stronger topology evidence than a single object name because it describes relationship context without requiring property blobs.
- Depth can show relative placement, but depth alone does not prove bus role, capability, or hardware support.
- A reduced nesting note should avoid saying a child device is usable, supported, or driven unless separate attachment/startup evidence exists.

## Unknowns

- The current topology fixture is too small to classify repeated bus-nesting patterns across families.
- Ordered ancestor class paths are not yet represented in the topology schema.

## Sources

- `knowledge/platform/topology-vocabulary.md`
- `knowledge/iokit/IORegistry.md`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- `experiments/registry-ancestor-capture/README.md`
