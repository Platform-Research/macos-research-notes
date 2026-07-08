# Asymmetric Evidence Boundary

## Summary

When one release lacks source artifacts or reduced metadata, platform comparison should emit an unresolved state rather than infer added, removed, changed, or supported behavior.

## Context

- Related report: `docs/reports/2026-06-29-macos-15.6-to-16.0-release-diff.md`
- Related acquisition log: `macos/15.6/source-acquisition-log.md`
- Related guide: `docs/guidelines/release-diff-input-readiness.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 234

## Rule

Missing evidence can support a statement about acquisition state. It cannot support a statement about platform behavior.

## Safe Wording

- "comparison unresolved"
- "artifact class unavailable"
- "no equivalent reduced input exists"
- "no release difference can be inferred"

## Sources

- `docs/reports/2026-06-29-macos-15.6-to-16.0-release-diff.md`
- `macos/15.6/source-acquisition-log.md`
- `docs/guidelines/release-diff-input-readiness.md`
