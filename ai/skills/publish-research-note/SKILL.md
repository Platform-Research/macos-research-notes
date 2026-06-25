---
name: publish-research-note
description: Convert raw Darwin Collective research findings into clear Markdown notes. Use when publishing observations from macOS internals research, reverse-engineering logs, release diffs, artifact analysis, or experiments while preserving uncertainty and evidence boundaries.
---

# Publish Research Note

Use this skill to turn rough work into reliable documentation.

## Workflow

1. Read the raw findings and identify evidence, inference, speculation, and unknowns.
2. Choose the correct location under `knowledge/` or `docs/`.
3. Use `docs/guidelines/note-template.md` unless a report format is more appropriate.
4. Preserve uncertainty.
5. Add related notes, artifacts, commands, and follow-up questions.

## Style

- Use short sections.
- Prefer precise names over broad claims.
- Say "observed" for direct evidence.
- Say "suggests" for supported inference.
- Say "unknown" when the data is incomplete.
- Say "speculative" when exploring an idea.

## Guardrails

- Do not make unsupported claims stronger.
- Do not hide failed experiments.
- Do not publish private or sensitive material.
- Do not imply unsupported hardware compatibility from partial evidence.
