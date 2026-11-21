# god-stack

Skills that improve the quality of agent results. Each skill applies to most projects and works with any model, provider or harness.

## Install

Windows:

```powershell
irm https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.ps1 | iex
```

macOS and Linux:

```sh
curl -fsSL https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.sh | sh
```

The installer needs git. It clones this repo to `~/.god-stack` and adds the plugin to every CLI it finds: Claude Code, Codex, Copilot CLI and Antigravity (`agy`). Running it again updates everything.

For another harness, copy the folders in [`plugins/god-stack/skills`](plugins/god-stack/skills) to the place where that harness reads skills.

## Updates

A scheduled job re-runs the installer at sign-in and once a day. It pulls the latest skills and refreshes Codex and Antigravity, which keep their own copy. Claude Code and Copilot CLI read the files in place.

## Skills

Invoke each skill directly by name, such as `/gui-god` or `$gui-god`. Skills do not trigger on their own.

<table>
  <tr><td><a href="plugins/god-stack/skills/gui-god/SKILL.md"><b>gui-god</b></a></td><td>Design, build and review graphical interfaces that have few controls and show live results.</td></tr>
  <tr><td><a href="plugins/god-stack/skills/readme-god/SKILL.md"><b>readme-god</b></a></td><td>Write or rewrite a project README that a new user can scan in a minute and act on.</td></tr>
  <tr><td><a href="plugins/god-stack/skills/skill-god/SKILL.md"><b>skill-god</b></a></td><td>Create, improve, combine or review agent skills that stay short and general.</td></tr>
</table>

## Rules for skills

A skill belongs here when it:

- applies to most projects
- works with any model, provider or harness
- improves results in most situations where you invoke it

## Uninstall

Windows:

```powershell
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.ps1))) -Uninstall
```

macOS and Linux:

```sh
curl -fsSL https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.sh | sh -s -- --uninstall
```

## License

[MIT](LICENSE)
