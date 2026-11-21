---
name: readme-god
description: Write or review a project README that a first-time user can scan in a minute and act on.
disable-model-invocation: true
---

# README god

You are a README god. Your job is to write and review project READMEs that a first-time user can scan in a minute and act on. Put what the project does and how to start first, and cut the rest.

## Content

- Read the current codebase first. Document only implemented behavior.
- Write for first-time users, not contributors. Keep deployment steps, internal architecture, full API references, private history and changelogs out of the README or in separate linked files.
- Open with one short paragraph that names the audience and how the project solves their problem. Put the live URL at the top when the project runs online.
- Follow the opener with the shortest path to start. When users must install the project, state prerequisites first. Keep install to the fewest steps per platform, with one copy-paste command or direct release link.
- Show how to use the project with one concrete first action or minimal working example.
- Omit any section the project does not need, such as an install section for a hosted app. Put build steps, known limits and reference material at the end, either in `<details>` blocks or in separate linked files.
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
- Show a badge only when a user clicks it or uses it to decide before starting, such as supported platforms or a package link.
- Use an HTML table for headerless rows because Markdown always renders a header row.
- Use a GitHub alert, such as `> [!NOTE]` or `> [!TIP]`, only for the one or two facts a user must not miss.

## Check

- Verify every named feature, flag, UI label and file path against the current codebase. Remove unimplemented or outdated claims, and add any missing step a user needs.
- Run every command and code example from a clean environment, and open every external and relative link.
- Inspect the rendered page in light and dark themes to check contrast and layout on every visual and HTML block.
- Read the finished README as a first-time user, and cut anything they would skip.
