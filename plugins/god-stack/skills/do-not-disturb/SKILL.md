---
name: do-not-disturb
description: Use when testing, verifying, automating or capturing screenshots of a running GUI or web app so you stay off the user's desktop and never steal focus or the cursor. Skip for pure unit tests, static checks or when the user asks to open a visible window.
---

# Do not disturb

When testing, verifying or capturing screenshots of an app, stay off the user's desktop. Never steal window focus or the cursor, and leave keyboard input and the clipboard untouched. Use headless or offscreen mode first. When an app needs a real window, run the app, automation and capture on a hidden desktop or isolated display. If isolation fails or captures come back blank, never fall back to the user's desktop. Stop, report what failed and ask before opening a visible window. Close every hidden process and desktop you started when done.
