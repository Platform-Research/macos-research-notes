# Published IOService Concept

## Summary

A published `IOService` object is a visible participant in the IOKit registry and matching system. It can represent a provider, driver, family object, controller-facing service, or software service, depending on context. Before family-specific interpretation, the safe claim is only that the service exists in a registry plane and may participate in provider/client relationships.

## Context

- Related IOKit note: `knowledge/iokit/IOService.md`
- Related registry note: `knowledge/iokit/IORegistry.md`
- Related platform note: `knowledge/platform/provider-discovery-vs-startup.md`
- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related fixture: `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 202

## Concept

`IOService` is a shared base for many IOKit objects, so a published service should not be treated as one specific kind of thing too early. The same registry surface can include:

- provider services that other services can match against;
- driver or family objects that attach under providers;
- platform or controller-facing objects;
- virtual or software services;
- root or platform expert objects that organize the service graph.

The service becomes more meaningful when paired with plane, class, name, depth, ancestors, personality metadata, or family-specific keys. Without that context, a published `IOService` object is evidence of registry participation, not a complete hardware or driver conclusion.

## Observations

- `IOService.md` records that `IOService` is the central base class for most kernel-side driver, family, device, and service objects.
- `IOService.md` records that `IOService` inherits from `IORegistryEntry`, placing services in the I/O Registry model.
- `IORegistry.md` records that the I/O Registry is a live in-memory graph of provider/client relationships across named planes.
- `IORegistry.md` records that the default `ioreg` plane is `IOService`, and that registry planes are different views of relationships between registry objects.
- `topology-vocabulary.md` recommends reduced topology fields such as `object_name`, `class_name`, `plane`, and `depth` before committing any property-bearing registry evidence.
- The topology fixture contains `Root` as `IORegistryEntry` at depth `0` and `J504AP` as `IOPlatformExpertDevice` at depth `1` in the `IOService` plane, while intentionally omitting property dictionaries.

## Inferences

- Published service evidence is strongest when it identifies the registry plane and class name. A class name without a plane loses relationship context.
- Depth and ancestry can help distinguish organizing platform objects from lower-level service candidates, but depth alone does not identify capability.
- A service class may be a useful provider-class join target, but matching a class name to `IOProviderClass` still does not prove a driver attached or started.
- Reduced topology can support platform knowledge by showing structural relationships, while avoiding raw properties that may contain host-specific or sensitive values.

## Research Use

When encountering a published service in reduced data:

1. Record the plane before interpreting the relationship.
2. Treat `class_name` as type evidence, not behavior evidence.
3. Use `depth` and ancestors to describe topology, not capability.
4. Join to personality metadata only as a candidate relationship unless runtime attachment evidence exists.
5. Avoid interpreting object names as stable identifiers until redaction and naming policy are explicit.

## Unknowns

- This note does not classify all common `IOService` subclasses by role.
- The current topology fixture is intentionally tiny and does not demonstrate a full provider/client chain.
- DriverKit service publication relative to kernel-resident `IOService` objects still needs a separate example.

## Sources

- `knowledge/iokit/IOService.md`
- `knowledge/iokit/IORegistry.md`
- `knowledge/platform/provider-discovery-vs-startup.md`
- `knowledge/platform/topology-vocabulary.md`
- `datasets/fixtures/topology-json/README.md`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
