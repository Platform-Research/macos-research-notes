# Service Name Redaction Decision

## Summary

Service names are useful examples, but they need redaction review before being treated as broadly safe. Names from generic classes and public fixtures are safer than names that may encode local identity, topology, or device-specific details.

## Context

- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related experiment: `experiments/registry-ancestor-capture/README.md`
- Related review guide: `docs/guidelines/platform-review-checklist.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 260

## Decision

- Safe by default: class names, plane names, schema field names.
- Review first: object names, path components, provider names from runtime output.
- Exclude by default: raw properties, blobs, local identifiers, power data.

## Sources

- `knowledge/platform/topology-vocabulary.md`
- `experiments/registry-ancestor-capture/README.md`
- `docs/guidelines/platform-review-checklist.md`
