# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/15.6/source-acquisition-log.md` records twenty bounded acquisition cycles for `15.6`: the smallest useful next artifact is reduced kext or DriverKit `Info.plist` personality metadata derived from a legal `15.6` source, and no raw source artifact was acquired in the session.

## Current Recommendation

Pause on release-diff extraction until a `15.6` source artifact is available.

Reason: the next useful step is no longer interpretation work inside the repo. It is obtaining or identifying one reproducible `15.6` source artifact that can feed the existing extraction tooling.

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
- One explicit stop condition if the source still is unavailable.
- No new framework work unless acquisition exposes a tooling gap.

## Evidence To Collect

- Existing release-diff report.
- Existing workflow rules.
- Existing macOS 15.6 and 16.0 artifacts.
- Existing fixture and report guidance.

## Definition Of Done

Done means:

- The session either adds one provenance-backed reduced source artifact or records why it still cannot be added.
- The work uses committed evidence paths only.
- The step clearly reduces one unresolved item from the current report or makes the blocker more concrete.

## Follow-Up Queue

1. Identify the best `15.6` source candidate to acquire.
2. Record provenance and legality constraints for that source.
3. Re-enter personality extraction only after the source exists in committed form.
