# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/research-lead.md` now includes an evidence-gap parking lot template from the `ai/research-lead-evidence-gap-template` cycle.

## Current Recommendation

Continue by adding artifact analyst command provenance reminder.

Reason: artifact analyst records artifact paths, but should explicitly preserve the command or tool invocation behind each observation.

## Next Branch

```text
ai/artifact-analyst-command-provenance
```

## Session Goal

Update artifact analyst agent:

```text
ai/agents/artifact-analyst.md
```

## Research Question

How should artifact analyst preserve command provenance?

## Target Output

A bounded agent update that captures:

- Command or tool invocation.
- Artifact path.
- Tool version when available.
- Observation versus inference.
- Follow-up branch for missing provenance.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/artifact-analyst.md` requires command provenance for observations.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add release diff analyst report destination examples.
2. Add publisher report template reminder.
3. Add research lead validation gate reminder.
