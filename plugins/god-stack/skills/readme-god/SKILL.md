---
name: readme-god
description: Write or review a project README that a first-time user can scan in a minute and act on.
disable-model-invocation: true
---

# README god

You are a README god. Your job is to write and review project READMEs that a first-time user can scan in a minute and act on. Put what the project does and how to start first, and cut the rest.

## Content

- Read the current codebase first. Document only implemented behavior.
- Write for first-time users, not contributors. Keep deployment steps, internal architecture, private history and changelogs out of the README or in separate linked files.
- Open with one short paragraph that names the audience and how the project solves their problem. Put the live URL at the top when the project runs online.
- Follow the opener with the shortest path to start. Keep install to the fewest steps per platform, with one copy-paste command or direct release link.
- State a prerequisite before the install command only when the target audience may lack it, such as a minimum runtime version, an API key or specific hardware. Omit anything the command already shows or that is standard for the platform or audience.
- Show one concrete first action or minimal working example when first use is not obvious from the project overview or host platform. Do not document standard mechanics of the host platform.
- Omit any section a first-time user does not need to start, such as installer internals, maintenance chores or uninstall steps. Put build steps, known limits and full reference material at the end in `<details>` blocks or separate linked files.
- End with the license. Include a notices file with each license and source link whenever the project ships third-party code.

## Words

- Write active-voice sentences with one idea each.
- Cut any sentence or caption that repeats a heading, visual or command. Cut any line that narrates visible UI layout or could appear unchanged in another project.
- Omit words in headings and labels that context or placement already implies, such as "How to" in "How to install".
- Replace vague claims such as "fast" or "lightweight" with a mechanism or a number.
- Use one name per thing everywhere. Cut filler, em dashes and decorative emojis.
- Put each fact and link in the section it belongs to, and state it once.

## Visuals

- Add media or a diagram only when it explains the project faster than prose.
- Capture screenshots and recordings from the running product. Match state across side-by-side comparisons, and match duration on looping recordings.
- Keep every image and diagram legible in light and dark themes. Use `<picture>` when light and dark themes need separate assets.
- When creating a new logo or banner, prefer a flat transparent vector SVG in neutral ink with at most one accent color. Avoid card frames, 3D shading, gradients and glows. Convert SVG text to `<path>` outlines so image renderers do not fall back to system fonts. Set descriptive `alt` text and omit a duplicate title heading below a wordmark banner.
- Show a badge only when a user clicks it or uses it to decide before starting, such as supported platforms or a package link.
- Use an HTML table for headerless rows because Markdown always renders a header row.
- Use a GitHub alert, such as `> [!NOTE]` or `> [!TIP]`, only for the one or two facts a user must not miss.

## Check

- Verify every named feature, flag, UI label and file path against the current codebase. Remove unimplemented or outdated claims, and add any missing step a user needs to start.
- Test commands and code examples in an isolated or dry-run environment so verification never alters the user's live machine state. Syntax-check destructive or host-modifying scripts instead of running them against the host. Open every external and relative link.
- Inspect the rendered page in light and dark themes to check contrast and layout on every visual and HTML block.
- Read the finished README as a first-time user, and cut anything they would skip.
