# Command 0033: Default Install Target to Current Directory

## Intent

Align installation with the expected user mental model: run the command from
inside a project and install into that current directory by default.

## Scope

- `bootstrap.sh`
- `install.sh`
- `uninstall.sh`
- `README.md`
- `docs/guides/GETTING_STARTED.md`
- `docs/execution/DECISIONS.md`
- `docs/commands/0033_default_install_target_current_directory.md`

## Change Summary

- Made `install.sh` default to `.` when no target path is provided.
- Made `uninstall.sh` default to `.` when no target path is provided.
- Made `bootstrap.sh` allow zero arguments and delegate to `install.sh`.
- Updated README and getting started examples to use:

```sh
curl -fsSL https://raw.githubusercontent.com/davidniverloer/ai-driven-sdlc/main/bootstrap.sh | sh
```

- Kept explicit target paths supported as an advanced/local option.

## Governance Notes

- Installer safety constraints remain unchanged.
- The installer still writes only to `.ai-sdlc/`.
- The uninstaller still moves only `.ai-sdlc/` and requires a manifest.

## Validation

- Run shell syntax validation for `bootstrap.sh`, `install.sh`, and
  `uninstall.sh`.
- Run default-current-directory install smoke test.
- Run default-current-directory uninstall smoke test.
- Run `git diff --check`.
