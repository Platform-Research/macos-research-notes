# Registry Property Exclusion List

## Summary

Registry properties should remain excluded until a dedicated schema and redaction policy exist. Topology-only records are the safe default.

## Context

- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related scope guide: `docs/guidelines/scope-boundaries.md`
- Related review guide: `docs/guidelines/platform-review-checklist.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 255

## Exclude By Default

- raw property dictionaries
- hex blobs
- memory ranges
- power-management dictionaries
- local identifiers
- process-local values
- entitlement lists unless specifically scoped

## Sources

- `knowledge/platform/topology-vocabulary.md`
- `docs/guidelines/scope-boundaries.md`
- `docs/guidelines/platform-review-checklist.md`
