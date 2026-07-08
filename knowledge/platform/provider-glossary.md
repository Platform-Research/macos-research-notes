# Provider Glossary

## Summary

A provider is an `IOService` object that other services or personalities may match against. In platform research, provider means "matching context" before it means "hardware device."

## Context

- Related IOKit note: `knowledge/iokit/IOService.md`
- Related registry note: `knowledge/iokit/IORegistry.md`
- Related platform note: `knowledge/platform/provider-discovery-vs-startup.md`
- Related fixture: `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 213

## Definition

Provider: an `IOService`-backed registry participant that can publish itself for matching and act as the object a client service attaches to in a registry plane.

## Observations

- `IOService.md` records that provider publication through `registerService()` begins matching and probing.
- `IOService.md` records that `attach()` enters a client into the I/O Registry as a child of the provider in the service plane.
- `IORegistry.md` records provider/client relationships across registry planes.

## Use

- Say "provider service" when the evidence is an `IOService` relationship.
- Say "hardware provider" only when family-specific hardware identity is present.
- Say "candidate provider" when a provider-class join exists without runtime attachment evidence.

## Sources

- `knowledge/iokit/IOService.md`
- `knowledge/iokit/IORegistry.md`
- `knowledge/platform/provider-discovery-vs-startup.md`
- `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`
