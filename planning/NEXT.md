# Next Work

Use this file to choose the next focused session.

## Last Completed

`ai/agents/publisher.md` now requires validation commands and results when fixtures or schemas change from the `ai/publisher-validation-result-guidance` cycle.

## Current Recommendation

Continue by adding research lead parking-lot evidence-gap guidance.

Reason: research lead uses the parking lot for scope creep, but should route evidence gaps there instead of forcing weak conclusions.

## Next Branch

```text
ai/research-lead-evidence-gap-parking-lot
```

## Session Goal

Update research lead agent:

```text
ai/agents/research-lead.md
```

## Research Question

How should research lead park evidence gaps?

## Target Output

A bounded agent update that captures:

- Parking lot use.
- Evidence gap label.
- Follow-up branch suggestion.
- Stop condition.
- Unknowns remain explicit.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `ai/agents/research-lead.md` routes unresolved evidence gaps to parking lot or follow-up work.
- It keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- It retains unresolved-state handling.

## Follow-Up Queue

1. Add artifact analyst note-template fallback guidance.
2. Add release diff analyst validation result reminder.
3. Add publisher validation command examples.
