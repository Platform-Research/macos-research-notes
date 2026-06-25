---
name: darwin-research-planner
description: Plan and scope Darwin Collective research sessions. Use when a broad Apple platform internals idea, driver ambition, reverse-engineering task, macOS artifact question, or tooling idea needs to become one focused research question, one target artifact, one output file, and a small definition of done.
---

# Darwin Research Planner

Use this skill to prevent scope drift.

## Workflow

1. Read `FOCUS.md`, `planning/ROADMAP.md`, and `docs/guidelines/scope-boundaries.md`.
2. Restate the user's idea as one research question.
3. Identify the smallest useful target: concept, artifact, version pair, log, class, kext, framework, or command output.
4. Choose one output path under `knowledge/`, `docs/`, `experiments/`, or `planning/`.
5. Define completion in two hours or less.
6. Move tempting but premature ideas to `planning/PARKING_LOT.md`.

## Output Shape

Return:

- Research question.
- Target artifact or concept.
- Output file.
- Evidence needed.
- Two-hour done definition.
- Parking lot items.

## Guardrails

- Prefer knowledge and repeatability over ambitious unsupported-driver work.
- Do not start with "build a driver"; start with "understand one prerequisite."
- Treat AI-generated claims as hypotheses until supported by artifacts.
- If the task requires undocumented behavior, write the assumption explicitly.
