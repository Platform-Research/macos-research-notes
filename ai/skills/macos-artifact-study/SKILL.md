---
name: macos-artifact-study
description: Study macOS internals artifacts such as kernels, kexts, frameworks, plists, logs, dyld metadata, symbols, strings, and Ghidra notes. Use when turning raw artifact data into structured observations, inferences, unknowns, and knowledge-base notes.
---

# macOS Artifact Study

Use this skill when one artifact or concept needs careful inspection.

## Workflow

1. Identify the artifact path, macOS version, source, and tool used.
2. Extract direct observations first: names, paths, identifiers, strings, symbols, dependencies, entitlements, classes, methods, or log lines.
3. Separate inferences from observations.
4. Record unknowns instead of filling gaps with guesses.
5. Write the result using `docs/guidelines/note-template.md`.
6. Place the note in the closest `knowledge/` topic folder.

## Good Targets

- `IOService`, `IORegistry`, `IOPCIDevice`, `IOUserClient`.
- Kext `Info.plist` metadata.
- Kernel extension dependencies.
- Framework symbols or changed strings.
- Boot logs and kernel panic logs.
- Ghidra class/function notes.

## Guardrails

- Do not claim behavior from a symbol name alone.
- Do not treat one macOS version as universal.
- Include command output or artifact paths when possible.
- Mark unsupported or private behavior as unknown unless demonstrated.
