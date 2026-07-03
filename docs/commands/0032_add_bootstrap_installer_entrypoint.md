# Command 0032: Add Bootstrap Installer Entrypoint

## Intent

Make the public install command easier to read and copy by adding a small
bootstrap script that delegates to the existing safe installer.

## Scope

- `bootstrap.sh`
- `install.sh`
- `README.md`
- `docs/guides/GETTING_STARTED.md`
- `docs/execution/DECISIONS.md`
- `docs/commands/0031_add_true_one_line_install_instruction.md`
- `docs/commands/0032_add_bootstrap_installer_entrypoint.md`

## Change Summary

- Added `bootstrap.sh`.
- Replaced the verbose temporary-clone README command with:

```sh
curl -fsSL https://raw.githubusercontent.com/davidniverloer/ai-driven-sdlc/main/bootstrap.sh | sh -s -- /path/to/your-project
```

- Updated dry-run documentation to use the same bootstrap path.
- Allowed `install.sh` to record `AI_SDLC_INSTALL_SOURCE` in the manifest when
  invoked through the bootstrap script.

## Governance Notes

- `install.sh` remains the authoritative installer.
- `bootstrap.sh` is only a transport wrapper.
- Bootstrap behavior does not write outside `.ai-sdlc/`.
- The remote one-liner becomes usable after `bootstrap.sh` is available on the
  target branch.

## Validation

- Run shell syntax validation for `bootstrap.sh` and `install.sh`.
- Confirm `bootstrap.sh --help` renders the documented command.
- Run local `install.sh` install and dry-run smoke tests.
- Run manifest source override smoke test for `AI_SDLC_INSTALL_SOURCE`.
- Run `git diff --check`.

The remote bootstrap command itself becomes end-to-end testable after
`bootstrap.sh` is published to the branch referenced by the README URL.
