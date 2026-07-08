# First Release Comparison Boundary

## Summary

The safest first platform-facing release comparison is metadata-to-metadata comparison for one artifact class that exists on both sides. If equivalent reduced inputs do not exist, the comparison should remain unresolved.

## Context

- Related readiness guide: `docs/guidelines/release-diff-input-readiness.md`
- Related manifests: `datasets/fixtures/acquisition-manifest/15.6.fixture.json`, `datasets/fixtures/acquisition-manifest/16.0.fixture.json`
- Related metadata note: `knowledge/platform/platform-facing-metadata.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 251

## Boundary

- Compare one artifact class at a time.
- Require equivalent reduced inputs.
- Emit unresolved for missing sides.
- Avoid behavior and support-quality claims.

## Sources

- `docs/guidelines/release-diff-input-readiness.md`
- `datasets/fixtures/acquisition-manifest/15.6.fixture.json`
- `datasets/fixtures/acquisition-manifest/16.0.fixture.json`
- `knowledge/platform/platform-facing-metadata.md`
