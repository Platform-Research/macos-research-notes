# Workflow Rules

These rules keep Darwin Collective easy to navigate as the research grows.

## Branches

Always open a branch for new work. Do not work directly on `main` except for emergency documentation fixes.

Branch format:

```text
<area>/<short-topic>
```

Use lowercase words separated by hyphens.

Common areas:

- `docs/<topic>` for documentation, guidelines, published notes, and templates.
- `knowledge/<topic>` for atomic knowledge-base notes.
- `experiments/<topic>` for bounded experiments and prototypes.
- `tools/<topic>` for reusable scripts, CLIs, MCP servers, and automation.
- `macos/<version-or-topic>` for release-specific organization and metadata.
- `ghidra/<topic>` for Ghidra projects, scripts, and analysis notes.
- `ida/<topic>` for IDA projects, scripts, and analysis notes.
- `ai/<topic>` for agents, prompts, skills, and AI workflow assets.
- `planning/<topic>` for roadmap, backlog, architecture, and scope documents.

Examples:

```text
docs/workflow-rules
knowledge/iokit-ioservice
experiments/nvme-queue-notes
tools/kext-inventory
macos/16-artifact-index
ghidra/apple-nvme-controller
ida/kernel-class-analysis
ai/research-prompts
planning/release-diff-pipeline
```

## One Branch, One Intent

Each branch should have one primary intent:

- Create or update research documentation.
- Analyze one artifact or concept.
- Prototype one experiment.
- Add one reusable tool.
- Compare one release pair.
- Refine one AI workflow.

If the work splits into multiple intents, create follow-up branches.

## Folder Ownership

Use folders by purpose:

- `docs/`: stable project docs, guidelines, published reports.
- `knowledge/`: atomic notes about concepts, classes, kexts, frameworks, and subsystems.
- `papers/`: papers and bibliographic notes.
- `datasets/`: structured metadata, inventories, indexes, and derived datasets.
- `experiments/`: temporary or bounded research work with a clear question.
- `tools/`: reusable tooling that other sessions can run.
- `prompts/`: reusable prompts for Codex, Claude, Copilot, or other assistants.
- `ai/`: agent definitions, skill/playbook files, and AI workflow conventions.
- `scripts/`: small project-level automation that does not yet belong to a tool package.
- `downloads/`: raw downloads and temporary acquisition area. Avoid committing large raw files.
- `macos/<version>/`: release-specific extracted metadata and notes.
- `ghidra/`: Ghidra projects, scripts, and exported analysis notes.
- `ida/`: IDA projects, scripts, and exported analysis notes.
- `notebooks/`: exploratory notebooks. Promote conclusions into `knowledge/` or `docs/`.

## Path Naming

Use predictable path names:

- Versions: `macos/15.6/`, `macos/16.0/`.
- Concepts: `knowledge/iokit/io-service.md`.
- Classes: `knowledge/iokit/IOService.md` when preserving exact API/class casing matters.
- Experiments: `experiments/<date>-<topic>/` or `experiments/<topic>/`.
- Reports: `docs/reports/<yyyy-mm-dd>-<topic>.md`.
- Inventories: `datasets/<domain>/<version>-inventory.json` or `.csv`.

Choose exact casing for Apple class names and symbols. Use lowercase hyphenated names for project-created files.

Report topics should be lowercase and hyphenated. Use `docs/reports/README.md` for report expectations and `docs/reports/release-comparison-template.md` for release comparison reports.

Reports are evidence-backed narrative outputs. Keep structured examples and generated fixtures under `datasets/fixtures/`. Promote only stable atomic findings into `knowledge/`.

## Research Promotion Path

Raw work should move through stages:

1. `downloads/` for acquisition.
2. `macos/<version>/` or `datasets/` for organized extracted metadata.
3. `experiments/` for investigation.
4. `knowledge/` for atomic findings.
5. `docs/` for stable guides, reports, or public summaries.

Do not publish directly from raw notes. Promote only after evidence, uncertainty, and sources are clear.

## Commit Rules

Commit format:

```text
<type>: <short summary>
```

Recommended types:

- `docs:` documentation, guidelines, reports.
- `knowledge:` atomic research notes.
- `experiment:` experiment setup or results.
- `tools:` reusable tooling.
- `data:` structured metadata or inventories.
- `ai:` prompts, agents, skills, and AI workflow files.
- `planning:` roadmap, backlog, scope, and architecture plans.
- `chore:` repository maintenance.

Examples:

```text
docs: add workflow rules
knowledge: document IOService matching notes
tools: add kext inventory script
data: add macos 16 kext inventory
ai: refine artifact analyst prompt
```

## Session Rules

Before a session:

- Read `FOCUS.md`.
- Choose one branch.
- Choose one output file.
- Define a two-hour done state.

During a session:

- Keep raw evidence close to the note.
- Use `planning/PARKING_LOT.md` for scope creep.
- Prefer small commits over large mixed changes.
- Record uncertainty instead of forcing conclusions.

After a session:

- Update or create the output file.
- Link related notes.
- Commit the work.
- Push the branch.
- If the result should become canonical, merge through review instead of silently changing `main`.

## Stop Rules

Stop and rescope when:

- The branch name no longer matches the work.
- More than one subsystem is being researched.
- The output path is unclear.
- The next step requires risky kernel or boot changes.
- The work depends on undocumented behavior with no artifact trail.
- The session is becoming tooling work when the goal was research, or research when the goal was tooling.

## Review Checklist

Before merging:

- Branch name matches the work.
- Files are in the correct folders.
- Raw, large, or temporary downloads are not committed.
- Claims separate observations, inferences, unknowns, and speculation.
- New reusable workflows have prompts, scripts, or docs.
- Parking lot captured tempting follow-ups.
- `git status` is clean after commit.
