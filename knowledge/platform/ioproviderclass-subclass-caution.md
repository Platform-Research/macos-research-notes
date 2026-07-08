# IOProviderClass Subclass Caution

## Summary

`IOProviderClass` matching can include subclass relationships, so exact class-name joins may understate or misstate possible matches. Candidate joins should preserve uncertainty when subclass context is unavailable.

## Context

- Related service note: `knowledge/iokit/IOService.md`
- Related candidate note: `knowledge/platform/candidate-joins.md`
- Related fixture: `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 248

## Guidance

- Treat exact provider-class equality as a candidate, not a conclusion.
- Record when subclass evidence is absent.
- Use ancestry and source-backed class hierarchy only when available.

## Sources

- `knowledge/iokit/IOService.md`
- `knowledge/platform/candidate-joins.md`
- `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`
