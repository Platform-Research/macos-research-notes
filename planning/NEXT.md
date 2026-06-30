# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/15.6/source-acquisition-log.md` records sixty bounded acquisition cycles for `15.6`: the target is reduced kext or DriverKit `Info.plist` personality metadata, the current host was rejected as a `15.6` source, no raw source artifact is present in `downloads/`, and the PCI match parser is ready as optional enrichment once a verified `15.6` source exists.

## Current Recommendation

Pause on release-diff extraction until a `15.6` source artifact is available.

Reason: the next useful step is no longer interpretation work inside the repo. It is obtaining or identifying one reproducible `15.6` source artifact that can feed the existing extraction tooling.
The current local host cannot satisfy that requirement.

If acquisition remains blocked, choose a platform-facing research task from `planning/PLATFORM_DIRECTION.md` that uses existing committed artifacts and does not claim hardware enablement.
Use `planning/PLATFORM_SESSION_QUEUE.md` to pick the smallest local-evidence cycle.

## Next Branch

```text
macos/15.6-source-acquisition
```

## Session Goal

Complete the first acquisition-backed unblock step:

```text
macos/15.6/source-acquisition-log.md
```

## Research Question

What is the smallest legal and reproducible `15.6` source artifact we can commit or derive locally to unlock personality extraction?

## Target Output

A bounded agent update that captures:

- One bounded acquisition step using the candidate order in `macos/15.6/artifacts.md`.
- One concrete source artifact target.
- One provenance-backed update to release metadata.
- Optional PCI match parsing only when the verified source contains PCI match keys.
- One explicit stop condition if the source still is unavailable.
- No new framework work unless acquisition exposes a tooling gap.

## Evidence To Collect

- Existing release-diff report.
- Existing workflow rules.
- Existing macOS 15.6 and 16.0 artifacts.
- Existing fixture and report guidance.
- Platform direction guide: `planning/PLATFORM_DIRECTION.md`.
- Platform session queue: `planning/PLATFORM_SESSION_QUEUE.md`.

## Definition Of Done

Done means:

- The session either adds one provenance-backed reduced source artifact or records why it still cannot be added.
- The work uses committed evidence paths only.
- The step clearly reduces one unresolved item from the current report or makes the blocker more concrete.

## Follow-Up Queue

1. Supply or acquire a legal `15.6` installer, mounted system volume, or other source with documented provenance.
2. Record provenance and legality constraints for that source.
3. Derive one reduced kext or DriverKit personality dataset, preferably including PCI match keys if present.
4. Re-enter release-diff work only after comparable reduced metadata exists.
5. If acquisition is blocked, use `planning/PLATFORM_DIRECTION.md` to pick a bounded boot, registry, provider-class, or controller-facing note.
6. Use `planning/PLATFORM_SESSION_QUEUE.md` to keep each platform-facing session small and evidence-backed.
