# Candidate Join Glossary

## Summary

A candidate join is a proposed relationship between reduced metadata records, such as a registry class and a personality provider class. It preserves useful platform relationships while explicitly stopping short of runtime attachment claims.

## Context

- Related candidate note: `knowledge/platform/candidate-joins.md`
- Related matching note: `knowledge/platform/matching-path.md`
- Related schema: `datasets/schemas/registry-personality-join.schema.json`
- Related fixture: `datasets/fixtures/candidate-joins/registry-personality-candidates.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 216

## Definition

Candidate join: an uncertainty-preserving link between two evidence records that may describe a matching relationship but does not prove probe success, attachment, startup, behavior, or support quality.

## Observations

- `candidate-joins.md` records candidate relationships as bounded research outputs.
- `matching-path.md` separates provider publication, personality metadata, candidate joins, runtime attachment, and startup.
- The registry-personality join schema exists to preserve join state rather than collapse uncertainty.

## Use

- Use candidate joins to prioritize follow-up evidence.
- Keep join reason and source records attached to the claim.
- Upgrade a candidate only when stronger runtime or release-backed evidence exists.

## Sources

- `knowledge/platform/candidate-joins.md`
- `knowledge/platform/matching-path.md`
- `datasets/schemas/registry-personality-join.schema.json`
- `datasets/fixtures/candidate-joins/registry-personality-candidates.fixture.json`
