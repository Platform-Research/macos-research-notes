# Probe Score Comparison

## Summary

`IOProbeScore` is ordering metadata for matching candidates. When comparing personalities, it can describe initial priority, but it cannot prove which driver won probing or started.

## Context

- Related service note: `knowledge/iokit/IOService.md`
- Related personality note: `knowledge/iokit/kext-personalities.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 229

## Guidance

- Compare probe scores only within the same provider/match context.
- Preserve the source personality and bundle identity.
- Do not infer final selection without probe or runtime evidence.

## Sources

- `knowledge/iokit/IOService.md`
- `knowledge/iokit/kext-personalities.md`
