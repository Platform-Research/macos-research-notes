# Reduced Release Acquisition Checklist Example

## Purpose

This is a review example for a reduced release artifact. It is not evidence that any artifact was acquired.

Use it with:

- `docs/guidelines/acquisition-checklist.md`
- `docs/guidelines/release-acquisition.md`
- `docs/guidelines/release-manifest-validation-examples.md`

## Example Scope

```text
Branch: macos/15.6-reduced-kext-personality-index
Source: local SDK or documented user-provided artifact
Output: datasets/fixtures/helper-outputs/15.6-kext-personalities.fixture.json
Manifest: datasets/fixtures/acquisition-manifest/15.6.fixture.json
```

## Before Acquisition

- [ ] Branch name matches the release and artifact class.
- [ ] Source is allowed by `docs/guidelines/release-acquisition.md`.
- [ ] Output path is under `datasets/` because the committed file is reduced metadata.
- [ ] Raw input stays outside git, preferably under `downloads/`.
- [ ] Redaction policy is known before parsing begins.

## During Acquisition

- [ ] Record source command, URL, or path.
- [ ] Record host version if using local system artifacts.
- [ ] Keep raw output separate from reduced JSON.
- [ ] Remove local identifiers and unrelated machine state.
- [ ] Preserve only fields needed for the research question.

## Before Commit

- [ ] Update the release acquisition manifest.
- [ ] Mark unavailable artifacts as `state: "missing"`.
- [ ] Keep unsupported driver claims out of notes and commit message.
- [ ] Run JSON syntax validation for the new file.
- [ ] Run optional schema validation when the fixture is covered.

## Validation Commands

```sh
python3 -m json.tool datasets/fixtures/acquisition-manifest/15.6.fixture.json >/dev/null
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

## Stop Conditions

Stop and open a focused planning note when:

- the source provenance is unclear;
- redaction cannot be checked locally;
- the raw artifact is too large to inspect;
- the output would require a new schema;
- the branch starts mixing acquisition, parsing, and interpretation work.
