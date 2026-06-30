# Optional Dependencies

## Purpose

Most macOS Research Notes cycles should run without downloading packages. Optional dependencies are allowed when they unlock a clearly scoped tool, but they must not become hidden requirements for ordinary note-taking or read-only inspection.

## Current Optional Dependency

`jsonschema` is used for optional schema validation:

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements-dev.txt
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

The `.venv/` directory is ignored by git and must not be committed.

## Version Recording

When an optional dependency matters, record:

- package name;
- installed version;
- command used to install;
- tool or workflow that needs it;
- whether it is required or optional.

For quick checks:

```sh
.venv/bin/python -c 'import jsonschema; print(jsonschema.__version__)'
```

## Lock Strategy

`requirements-dev.txt` is the current minimal optional dependency file.

Do not add additional lockfiles until the project chooses a stable package manager for research tooling.

Acceptable future options:

- `uv.lock` if `uv` becomes the project standard;
- vendored single-file tooling when legally and operationally simple.

## Stop Rules

Stop and document the dependency instead of installing it when:

- it is needed only for a speculative experiment;
- it would vendor a large dependency tree;
- it changes global Python, Homebrew, or system state;
- it requires network access during a supposedly offline validation step.

## Required Baseline

The required baseline remains:

```sh
tools/schema-validate/validate-json.sh
```

Full JSON Schema validation is optional until a lock strategy is chosen.
