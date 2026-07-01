# Scope Boundaries

## In Scope Now

- macOS artifact organization.
- Knowledge base design.
- IOKit concepts.
- Kernel and kext metadata.
- Release comparison.
- Reverse-engineering notes.
- Safe experiments on owned machines or local artifacts.
- Tooling that improves repeatability.

## In Scope Later

- MCP servers.
- Ghidra automation.
- Knowledge graph database.
- VS Code extension.
- Binary indexing.
- Hardware-specific research tracks.

## Out of Scope Until Proven

- Full GPU driver development.
- Claims of Metal support without a working implementation.
- Kernel patching on a primary machine.
- Broad "support unsupported hardware" goals without a specific device, OS version, and artifact trail.

## Stop Conditions

Pause and write down assumptions when:

- The task requires undocumented private behavior.
- The artifact source is unclear.
- The result cannot be reproduced.
- The next step would risk boot stability.
- The scope grows beyond the original session question.

## Platform Review

Use `docs/guidelines/platform-review-checklist.md` before promoting platform-facing notes, fixtures, or reports.
