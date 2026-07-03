# Command 0031: Add True One-Line Install Instruction

## Intent

Make the public installation path beginner-oriented by documenting a real
one-line bootstrap command that does not assume the user has already cloned and
entered the ai-driven-sdlc repository.

## Scope

- `README.md`
- `docs/guides/GETTING_STARTED.md`
- `docs/commands/0031_add_true_one_line_install_instruction.md`

## Change Summary

- Added a one-line install command that creates a temporary directory, clones
  ai-driven-sdlc, and runs `install.sh` against the target repository.
- Kept the direct `./install.sh /path/to/your-project` form as the local
  checkout/contributor path.
- Clarified that `/path/to/your-project` should be replaced with the target
  repository path.

## Superseded By

Command 0032 replaces the temporary-clone one-liner with a cleaner
`curl .../bootstrap.sh | sh` instruction.

## Governance Notes

- This is documentation-only installation guidance.
- Installer behavior is unchanged.
- The command still installs only into `.ai-sdlc/`.

## Validation

- Confirmed the README and getting started guide expose the one-line command.
- Ran `git diff --check`.
