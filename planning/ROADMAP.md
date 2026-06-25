# Roadmap

## Phase 0: Workspace Discipline

- Define research principles and scope boundaries.
- Create note templates.
- Create agent roles and prompts.
- Keep every folder meaningful.

## Phase 1: Knowledge Base

- Build atomic notes for IOKit, kernel, kexts, dyld, frameworks, Metal, USB, NVMe, and boot.
- Prefer one concept per Markdown file.
- Add source, confidence, related artifacts, and open questions to each note.

## Phase 2: Artifact Workflow

- Store macOS release materials under `macos/<version>/`.
- Track extracted kernels, kexts, frameworks, dyld shared cache metadata, and symbol data.
- Keep raw downloads out of Git unless they are tiny metadata files.

## Phase 3: Comparison Pipeline

- Compare macOS versions by artifact inventory first.
- Then compare symbols, class names, strings, entitlements, kext metadata, and dependency graphs.
- Publish short change reports.

## Phase 4: Research Tooling

- Add scripts only after a manual workflow repeats at least three times.
- Build MCP tools later for docs, Ghidra, Git, binary search, and knowledge graph.
- Prototype graph storage with a small schema before adopting Neo4j or ArangoDB.

## Phase 5: Public Output

- Publish notes only when they separate observation, inference, and speculation.
- Prefer reproducible findings over impressive claims.
- Keep risky driver work as a long-range research theme, not the first milestone.
