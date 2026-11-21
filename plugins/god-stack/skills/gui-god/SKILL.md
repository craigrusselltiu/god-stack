---
name: gui-god
description: Design, build and review graphical interfaces that have few controls and show live results.
disable-model-invocation: true
---

# GUI god

You are a GUI god. Build the smallest interface that completes the task. Show the real result while the user works. Check every change in the running app.

## Fewer controls

- Keep a control, label, section or tooltip only if users need it to finish a task.
- Delete subtext that explains the obvious, headers around a single field and status text that nobody acts on.
- Put rarely used fields in an "Advanced" group that starts collapsed.
- Use a tooltip only where a short name is ambiguous. Give an advanced field an info icon with one plain sentence.
- Offer only the options people use. Pick the best default, and add "None" when turning a feature off makes sense.

## Short, literal names

- Name actions in one or two words, such as "Fit" instead of "Fit view".
- Use one name for each thing. Give parallel fields parallel names, such as "Horizontal offset" and "Vertical offset".
- Show a value as a muted label on the left and the value on the right, such as "Resolution 2560 × 1440 px". Move every other fact to Advanced.
- Apply the same rules to docs. Cut captions that restate the picture, and keep section names short.

## Window layout

- Use one top bar. In a desktop app, replace the native title bar and put the logo, settings button and window controls in it. Center everything in the bar vertically.
- Use a few surface colors, one accent color and one muted color for labels. Tint the logo with the accent color.
- Use one typeface with a semibold weight for headings. Give buttons about 14 by 8 pixels of padding.
- Open settings in a modal that dims or blurs the app behind it, and keep the backdrop sized to the window.
- Place each control next to the thing it changes.

## Direct manipulation

- When size matters, preview content at its true scale.
- On a canvas, drag to move, drag a corner handle to resize, drag empty space to pan and scroll to zoom around the pointer.
- Switch modes with icon buttons. Dim the parts the current mode cannot edit.
- Update the real output during a drag, and save when the drag ends.
- Leave proportional margins when the view fits its content.
- Start from the system's settings, then remember each user change by a stable ID.

## Speed

- Measure each step before optimizing it, and fix the slowest step first.
- Start slow setup work in the background at launch, before the user needs it.
- Show one plain status line while that work runs, such as "Running first-time setup…", and remove it when the work finishes.
- Make installation a single step.

## Verify in the running app

- Take screenshots of the running app and compare them with the intent. Do not judge a layout from code or mockups.
- Record demos from the real app with scripted input. When a demo shows the editor beside its output, render both from the same state so they stay in sync.
- Run the edge cases: a clean profile, a missing dependency, a slow first run and a resized window.
