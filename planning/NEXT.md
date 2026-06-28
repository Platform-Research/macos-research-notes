# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/research-lead.md` now routes evidence gaps to parking lot or follow-up branches from the `ai/research-lead-evidence-gap-parking-lot` cycle.

## Current Recommendation

Continue by adding artifact analyst note-template fallback guidance.

Reason: artifact analyst points to the note template, but should state what to do when report-level evidence is not available.

## Next Branch

```text
ai/artifact-analyst-note-template-fallback
```

## Session Goal

Update artifact analyst agent:

```text
ai/agents/artifact-analyst.md
```

## Research Question

How should artifact analyst fall back to smaller notes?

## Target Output

A bounded agent update that captures:

- `docs/guidelines/note-template.md` use.
- When to avoid `docs/reports`.
- Evidence path minimum.
- Unknowns section.
- Follow-up branch suggestion.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/artifact-analyst.md` explains fallback to small notes when report evidence is insufficient.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add release diff analyst validation result reminder.
2. Add publisher validation command examples.
3. Add research lead evidence-gap parking lot template.
