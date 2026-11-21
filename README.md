# god-stack

god-stack gives coding agent users reusable skills with concrete rules for UI design, READMEs, off-desktop testing and skill authoring. Each skill applies across projects and works with any model, provider or harness.

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

The installer clones this repo to `~/.god-stack`. It adds the plugin to Claude Code, Codex and Copilot CLI when installed. For Antigravity, it copies the skills to `~/.gemini/config/skills`.

For another harness, copy the folders in [`plugins/god-stack/skills`](plugins/god-stack/skills) to that harness's skills directory.

## Skills

Invoke a skill by name with your harness's prefix, such as `/` or `$`, followed by your task. Skills do not trigger on their own.

```text
/readme-god Review this project's README.
```

<table>
  <tr><td><a href="plugins/god-stack/skills/do-not-disturb/SKILL.md"><b>do-not-disturb</b></a></td><td>Run functional tests and capture apps off your desktop without stealing window focus or the cursor.</td></tr>
  <tr><td><a href="plugins/god-stack/skills/gui-god/SKILL.md"><b>gui-god</b></a></td><td>Design, build and review cohesive, low-clutter graphical interfaces that feel natural to use.</td></tr>
  <tr><td><a href="plugins/god-stack/skills/readme-god/SKILL.md"><b>readme-god</b></a></td><td>Write or review a project README that a first-time user can scan in a minute and act on.</td></tr>
  <tr><td><a href="plugins/god-stack/skills/skill-god/SKILL.md"><b>skill-god</b></a></td><td>Create, improve, combine or review agent skills that stay short and general.</td></tr>
</table>

## Updates

On Windows, the installer schedules updates at sign-in and daily at 12:00. On macOS and Linux, it adds `crontab` jobs at startup and daily at 12:00 when `crontab` is available.

Each run pulls the latest skills and refreshes the copies used by Codex and Antigravity. Claude Code and Copilot CLI read `~/.god-stack` in place. Re-run the install command at any time to update immediately.

## Uninstall

Windows:

```powershell
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.ps1))) -Uninstall
```

macOS and Linux:

```sh
curl -fsSL https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.sh | sh -s -- --uninstall
```

Each command removes the scheduled update job, plugin registrations, Antigravity skill copies and `~/.god-stack`.

## License

[MIT](LICENSE)
