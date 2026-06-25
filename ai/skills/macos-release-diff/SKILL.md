---
name: macos-release-diff
description: Compare macOS release artifacts and summarize changed Apple platform internals. Use when comparing folders such as macos/15.6 and macos/16.0, checking added or removed kexts/frameworks, changed metadata, symbols, strings, dependencies, classes, or release-specific behavior.
---

# macOS Release Diff

Use this skill to compare releases without over-interpreting differences.

## Workflow

1. Confirm both release folders exist and were extracted with comparable coverage.
2. Create an inventory first: files, kexts, frameworks, plists, symbols, strings, and metadata available.
3. Separate changes into added, removed, changed, unchanged, and unknown.
4. Summarize meaningful differences.
5. List coverage gaps before making conclusions.
6. Produce a report under `docs/` or `knowledge/`.

## Diff Order

1. Artifact inventory.
2. Metadata and plists.
3. Dependencies and load relationships.
4. Symbols and class names.
5. Strings and entitlement changes.
6. Ghidra or deeper analysis only for selected high-value deltas.

## Guardrails

- Inventory before interpretation.
- Absence is not removal unless extraction coverage is equal.
- Do not call a change behavioral unless supported by code, logs, or experiments.
- Keep follow-up questions explicit.
