---
name: readme-god
description: Write or rewrite a project README that a new user can scan in a minute and act on.
disable-model-invocation: true
---

# README god

You are a README god. Your job is to write or rewrite a project README that a new user can scan in a minute and act on. Put what the project does and how to start first, and cut the rest.

## Order

1. Logo and a one-line hook that names the problem and the audience.
2. One short paragraph on the problem and how the project solves it.
3. A demo.
4. Install, as one command or one download.
5. A short summary of how to use it.
6. Reference material, such as command-line flags and build steps.
7. License.

## Words

- Write for users. Put build steps and known limits in collapsed `<details>` blocks.
- Write one idea per sentence. Delete any sentence that repeats what a heading or picture already says.
- Name sections in one or two words, such as "Install" or "Summary".
- Describe behavior with a mechanism or a number, such as "decodes the video once on the GPU".
- Give each thing one name and use it everywhere.
- Put each fact in the section it belongs to, and state it once.

## Visuals

- Use a logo with light and dark variants through `<picture>`.
- Keep badges to the few a user acts on, such as the download link and supported platforms.
- Record demos from the running product. When a demo shows two views side by side, render both from the same state and give them the same length so they loop together.
- Label each demo column in one or two words. Skip captions that describe the picture.
- Add a diagram when the core idea is a comparison or a layout.
- Use an HTML table for rows without a header. A Markdown table always renders a header row, even an empty one.
- Use a GitHub alert, such as `> [!NOTE]`, for the one or two facts a user must not miss.

## Install

- Give one copy-paste command per platform and a direct link to the latest release.
- Make the download run with nothing else installed. Bundle dependencies or fetch them on first run.
- Add a license. When the release ships third-party code, add a notices file with each license and a link to the source.

## Check

- Run every command and open every link from a clean environment.
- Read the rendered page on GitHub in light and dark themes.
- Do a final pass and delete anything a first-time user would skip.
