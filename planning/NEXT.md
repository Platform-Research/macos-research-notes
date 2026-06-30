# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/reports/2026-06-29-macos-15.6-to-16.0-release-diff.md` now captures the first honest release-diff result: current committed inputs are insufficient for a real diff, so the output remains unresolved.

## Current Recommendation

Continue the macOS release-diff research by closing the first blocking evidence gap.

Reason: the first report now records why the diff is unresolved. The next useful step is to acquire one comparable reduced dataset rather than rephrase the absence again.

## Next Branch

```text
macos/15.6-kext-personality-acquisition
```

## Session Goal

Start the first acquisition-backed research step:

```text
experiments/kext-personality-extraction/README.md
```

## Research Question

What is the smallest committed reduced dataset that unlocks the next real release comparison?

## Target Output

A bounded agent update that captures:

- One bounded acquisition step.
- One concrete reduced dataset target.
- One evidence-backed experiment or fixture update.
- One explicit stop condition if local artifacts are still unavailable.
- No new framework work unless the acquisition step exposes a tooling gap.

## Evidence To Collect

- Existing release-diff report.
- Existing workflow rules.
- Existing macOS 15.6 and 16.0 artifacts.
- Existing fixture and report guidance.

## Definition Of Done

Done means:

- A focused acquisition or reduction branch is created.
- The session updates one experiment, fixture, or report with committed evidence.
- The work uses committed evidence paths only.
- The step clearly reduces one unresolved item from the current report.

## Follow-Up Queue

1. Identify whether any local source for `15.6` kext personality extraction already exists.
2. If yes, reduce it into a committed dataset; if not, record the blocker explicitly.
3. Update the release-diff report after the acquisition step.
