# Release Comparison Fields

## Summary

Release-to-release platform comparison should start with reduced fields that preserve provenance and avoid behavior claims. The best fields are stable metadata fields that can be collected equivalently on both sides.

## Context

- Related metadata note: `knowledge/platform/platform-facing-metadata.md`
- Related schema: `datasets/schemas/release-diff.schema.json`
- Related guide: `docs/guidelines/release-diff-input-readiness.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 233

## Preferred Fields

- release and build provenance
- artifact class
- bundle identifier and type
- personality name
- `IOClass`
- `IOProviderClass`
- generic and family-specific match keys
- topology plane, class, depth, and ancestry
- acquisition and redaction policy

## Boundary

Do not compare behavior unless both releases have comparable runtime evidence.

## Sources

- `knowledge/platform/platform-facing-metadata.md`
- `datasets/schemas/release-diff.schema.json`
- `docs/guidelines/release-diff-input-readiness.md`
