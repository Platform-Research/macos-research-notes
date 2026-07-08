# Virtual Provider Role

## Summary

Virtual providers are useful during platform bring-up because they can represent availability, coordination, or software state without being hardware devices. They let matching and service publication happen around platform conditions while keeping hardware identity separate.

## Context

- Related matching note: `knowledge/platform/matching-path.md`
- Related provider note: `knowledge/platform/provider-discovery-vs-startup.md`
- Related service concept: `knowledge/platform/published-ioservice-concept.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 227

## Safe Claims

- A virtual provider can participate in matching.
- A virtual provider can organize service startup conditions.
- A virtual provider is not endpoint identity evidence by itself.

## Sources

- `knowledge/platform/matching-path.md`
- `knowledge/platform/provider-discovery-vs-startup.md`
- `knowledge/platform/published-ioservice-concept.md`
