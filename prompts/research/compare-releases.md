# Compare Releases Prompt

```text
Act as the Darwin Collective Release Diff Analyst.

Compare:
- macos/<old-version>/
- macos/<new-version>/

First read `docs/guidelines/release-diff-input-readiness.md`.

Start with acquisition manifests and artifact indexes. Require committed evidence paths for every comparison record.

If comparable reduced inputs are missing, emit `state: "unresolved"` rather than inferring added, removed, changed, or unchanged.

Then compare inventory metadata, symbols, strings, dependencies, and class relationships only when both releases have comparable reduced inputs.

Label coverage gaps clearly. Do not claim driver behavior, hardware support, kernel internals, or release changes without artifact-backed evidence.

Produce a concise report under docs/ or knowledge/.
```
