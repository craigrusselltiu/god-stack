---
name: skill-god
description: Create, improve, combine or review agent skills that stay concise and general. Use when writing a new skill, turning session lessons into a skill, adapting an external skill, or fixing a skill that produces weak or unreliable results.
---

# Skill god

A skill encodes judgment and steps that change how an agent performs a task. Write for a new agent that has never seen your conversation, and cut everything it already knows.

## Extract from real work

- Read the actual artifacts, git history, failures and user corrections before drafting. Do not write a skill from memory or generic checklists.
- Trace each failure to its root cause and fix the underlying principle. Do not append patch rules for one incident.
- Generalize concrete fixes into rules that hold for unseen inputs. Never tune a skill to one test case.
- Audit external skills against the real environment before adopting them. Keep the core method, and drop or adapt rules that break on the target platform or conflict with existing workflows.

## Scope and structure

- Give each skill one clear job. Put supporting techniques inside the main workflow and skip multi-mode menus.
- Keep reusable skills independent of any single project, model, provider or tool. When a skill benefits from an optional capability, explain how to use it when present and how to finish the work without it.
- Match control to risk. State the outcome and decision criteria when multiple approaches work. Add a script or fixed sequence only when deterministic execution prevents errors or repeated work.
- Keep the frontmatter short because it loads in every session. State what the skill does and when to trigger it, and add exclusions where misrouting is likely. Require manual invocation for intrusive or specialized workflows.
- Keep `SKILL.md` short so every line changes a decision. Move bulky references or templates into linked files and state when to read each one. Skip extra files when one file is enough.
- Keep each fact in one place. Link to repository documentation or workflows rather than copying rules.

## Plain words

- Say what to do with a mechanism or a number. Cut any sentence that could sit unchanged in another skill.
- Write whole, active-voice sentences with one idea per sentence. Name the actor, and spell out arrows and abbreviations.
- Use one name for each concept and repeat it.
- Use plain, literal words. Write "is" or "has" instead of "serves as" or "features", and "use" instead of "utilize" or "leverage". Replace abstract metaphors and AI filler words such as "crucial", "delve", "scaffolding" or "paradigm" with the concrete word.
- Cut filler, vague attributions, generic conclusions, chatbot openers and trailing "-ing" clauses that add no fact. Keep hedging to "may" at most, and replace adverbs with stronger verbs or exact numbers.
- State the point instead of writing "not just X, but Y". Avoid false "from X to Y" scales and forced lists of three.
- Use periods or commas instead of em dashes, en dashes, hyphens used as dashes, or parentheses in their place. Use a colon only before a list or an example, never mid-sentence as a connector.
- Use sentence-case headings and straight quotes. Skip decorative emojis and scattered bolding. Do not use a bold label that restates the line after it.

## Limits and checkpoints

- State what the skill covers and what it excludes so agents do not overclaim results.
- Enforce strict rules in code, types, tests or linters. A skill guides behavior, and only code or automation enforces a rule.
- Bound retry loops and add human checkpoints before irreversible or subjective steps. Tell the agent when to stop and report what remains unresolved.
- Name the source of truth when humans and agents share files, and tell the agent to inspect current state before acting.

## Verify and maintain

- Test the skill with a new agent that has no session context. Give it a new input rather than the case that inspired the skill, and fix every missing assumption it hits.
- Run every command, script, install step and manifest validator the skill names in a clean environment. Verify that checks fail on broken inputs, not only that they pass on valid ones.
- Never weaken a rule or check to make a run pass. When a run fails, determine whether the skill fell out of date or the work has a bug.
- Run two editing passes before finishing. First scan mechanically for banned words, dashes, parentheses, curly quotes and arrows. Then read the whole file by hand to cut repetition and forced patterns.
- Delete stale instructions whenever you edit a skill. Remove rules that no longer change behavior so the file stays short.
