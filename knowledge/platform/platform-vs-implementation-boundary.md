# Platform vs Implementation Boundary

## Summary

Platform knowledge describes metadata roles, topology, artifact provenance, and matching surfaces. Driver implementation knowledge describes code behavior, algorithms, hardware programming, and runtime effects. This repo should keep those tracks separate until evidence justifies crossing them.

## Context

- Related direction: `planning/PLATFORM_DIRECTION.md`
- Related scope guide: `docs/guidelines/scope-boundaries.md`
- Related role note: `knowledge/platform/platform-role-vs-driver-behavior.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 238

## Boundary

- Platform: fields, roles, artifacts, registry relationships.
- Implementation: code paths, side effects, hardware programming, performance.
- Bridge readiness: questions and evidence routing, not enablement claims.

## Sources

- `planning/PLATFORM_DIRECTION.md`
- `docs/guidelines/scope-boundaries.md`
- `knowledge/platform/platform-role-vs-driver-behavior.md`
