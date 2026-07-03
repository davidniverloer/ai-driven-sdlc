# Command 0034: Install Uninstaller in Operating Layer

## Intent

Make uninstall instructions accurate for users who install through the remote
one-line bootstrap command.

## Scope

- `install.sh`
- `README.md`
- `docs/guides/GETTING_STARTED.md`
- `docs/execution/DECISIONS.md`
- `docs/commands/0034_install_uninstaller_in_operating_layer.md`

## Change Summary

- Copy `uninstall.sh` into `.ai-sdlc/uninstall.sh` during installation.
- Mark the installed uninstaller executable.
- Add `uninstall.sh` to the install plan and manifest.
- Document uninstall as:

```sh
.ai-sdlc/uninstall.sh
```

## Governance Notes

- Uninstall behavior remains manifest-aware.
- Application code remains out of scope.
- The uninstaller still moves `.ai-sdlc/` to a backup instead of deleting it.

## Validation

- Run default install smoke test and confirm `.ai-sdlc/uninstall.sh` exists.
- Run installed uninstaller smoke test from a target repository.
- Run `git diff --check`.
