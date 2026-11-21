# Changelog

All notable changes to this project are documented here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## v0.7.0

### Added

- `comment-god` skill.

## v0.6.0

### Added

- `do-not-disturb` skill.

### Changed

- Simplified `README.md` to prerequisites, install commands, the skills table and license.
- Removed stale `and show live results` wording from `gui-god` frontmatter.

### Fixed

- Always run the plugin install/refresh step in `install.sh` even if `marketplace add` exits non-zero when already registered.

## v0.5.1

### Fixed

- Install Antigravity skills into `~/.gemini/config/skills` instead of `agy plugin install` so Antigravity discovers them across App, IDE, CLI and embedded hosts without duplicates.

## v0.5.0

### Changed

- Tightened `skill-god` around fundamental principles, cohesive sections, preserving invariants when shortening, and referencing sibling `god-stack` skills when needed.
- Reorganized `gui-god` into 4 sections (`Controls`, `Visuals`, `Interaction`, `Check`), added aesthetic and UX craft rules, and removed Multipapr-specific leftovers.
- Reorganized `readme-god` into 4 sections (`Content`, `Words`, `Visuals`, `Check`), grounded claims in the current codebase, and generalized structure beyond desktop apps.

## v0.4.0

### Changed

- All skills open with a direct role instruction.
- All skills are direct-invoke only (`disable-model-invocation: true` and `agents/openai.yaml` `allow_implicit_invocation: false`).

## v0.3.0

### Added

- skill-god skill.

### Changed

- Renamed the repository and plugin from one-stack to god-stack.

## v0.2.0

### Added

- readme-god skill.

## v0.1.0

### Added

- gui-god skill.
- Plugin for Claude Code, Codex, Copilot CLI and Antigravity, with a one-command installer and daily auto-updates.
