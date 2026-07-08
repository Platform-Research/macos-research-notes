# Service vs Hardware Dependency

## Summary

A service dependency is a registry or matching relationship between software-visible objects. A hardware dependency is a requirement on an underlying device, bus, controller, interrupt, power, or platform identity surface. Platform notes should keep these separate so an IOService relationship is not mistaken for a physical requirement.

## Context

- Related IOKit note: `knowledge/iokit/IOService.md`
- Related registry note: `knowledge/iokit/IORegistry.md`
- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related provider note: `knowledge/platform/provider-discovery-vs-startup.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 207

## Observations

- `IOService.md` records provider publication, matching, probing, attachment, and startup as separate concepts.
- `IORegistry.md` records provider/client relationships across registry planes.
- `topology-vocabulary.md` recommends topology-only fields before property-bearing evidence.
- `provider-discovery-vs-startup.md` separates provider existence and candidate matching from successful startup.

## Inferences

- A service dependency can be described from provider/client relationships, personalities, and candidate joins.
- A hardware dependency needs stronger evidence, such as family-specific identity, platform artifact metadata, or source-backed behavior.
- Registry ancestry can suggest where hardware-facing dependencies may exist, but it does not establish the dependency by itself.
- The safest wording is "depends on a service/provider relationship" unless physical hardware evidence is explicit.

## Unknowns

- The repo does not yet have an example that traces one service dependency to a verified hardware dependency.
- Power and interrupt dependencies remain source-needed for most platform claims.

## Sources

- `knowledge/iokit/IOService.md`
- `knowledge/iokit/IORegistry.md`
- `knowledge/platform/topology-vocabulary.md`
- `knowledge/platform/provider-discovery-vs-startup.md`
