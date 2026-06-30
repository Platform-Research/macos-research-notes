# Focus System

Use this file before starting any work session.

## North Star

Create a serious Apple platform internals research lab: knowledge base, release-diff pipeline, artifact indexing, graph of relationships, and publishable documentation.

Favor work that maps platform assumptions, boot artifacts, hardware-facing metadata, and IOKit matching before any hardware-specific enablement work.

## Do First

1. Capture raw material.
2. Extract one concrete question.
3. Study one artifact or concept.
4. Write one small note.
5. Link it to related notes.
6. Commit the improvement.

## Avoid For Now

- Building a full macOS GPU driver.
- Chasing unsupported hardware before understanding the supported path.
- Treating platform portability as an implementation task before the boot, registry, driver, and artifact layers are documented.
- Writing large essays before small atomic notes exist.
- Creating complex tools before the manual workflow is understood.
- Treating AI output as evidence without logs, artifacts, or references.

## Session Template

Before working, answer:

- What is the single question for this session?
- What branch am I working on?
- Which folder will receive the result?
- What would count as "done" in under two hours?
- What evidence will support the conclusion?

After working, record:

- What changed?
- What is now known?
- What remains uncertain?
- What should be done next?

## Parking Lot

Use [planning/PARKING_LOT.md](planning/PARKING_LOT.md) for tempting ideas that are not today's work.

Use [planning/PLATFORM_DIRECTION.md](planning/PLATFORM_DIRECTION.md) when choosing between acquisition, IOKit, boot, registry, and hardware-facing research tasks.

## Workflow Rules

Use [docs/guidelines/workflow-rules.md](docs/guidelines/workflow-rules.md) before creating new branches, folders, commits, experiments, or research outputs.
