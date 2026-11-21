<picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/banner-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="assets/banner-light.svg">
  <img alt="god-stack" src="assets/banner-light.svg" width="100%">
</picture>

god-stack gives coding agent users reusable skills with concrete rules for code comments, UI design, READMEs, off-desktop testing and skill authoring. Each skill applies across projects and works with any model, provider or harness.

## Install

The installer requires `git`, plus `curl` on macOS and Linux.

Windows:

```powershell
irm https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.ps1 | iex
```

macOS and Linux:

```sh
curl -fsSL https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.sh | sh
```

## Skills

<table>
  <tr><td><a href="plugins/god-stack/skills/comment-god/SKILL.md"><b>comment-god</b></a></td><td>Remove unnecessary comments and diagnostic suppressions in scoped code, and fix the underlying code when needed.</td></tr>
  <tr><td><a href="plugins/god-stack/skills/do-not-disturb/SKILL.md"><b>do-not-disturb</b></a></td><td>Run functional tests and capture apps off your desktop without stealing window focus or the cursor.</td></tr>
  <tr><td><a href="plugins/god-stack/skills/gui-god/SKILL.md"><b>gui-god</b></a></td><td>Design, build and review cohesive, low-clutter graphical interfaces that feel natural to use.</td></tr>
  <tr><td><a href="plugins/god-stack/skills/readme-god/SKILL.md"><b>readme-god</b></a></td><td>Write or review a project README that a first-time user can scan in a minute and act on.</td></tr>
  <tr><td><a href="plugins/god-stack/skills/skill-god/SKILL.md"><b>skill-god</b></a></td><td>Create, improve, combine or review agent skills that stay short and general.</td></tr>
</table>

## License

[MIT](LICENSE). See [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) for third-party attributions.
