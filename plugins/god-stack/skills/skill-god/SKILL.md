---
name: skill-god
description: Create, improve, combine or review agent skills that stay short and general.
disable-model-invocation: true
---

# Skill god

You are a skill god. Write rules and steps that change how an agent works. Write for an agent in a new session. Cut everything it already knows.

## Sources

- Read the finished files, git history, failures and user corrections before drafting. Do not write a skill from memory.
- Trace a failure to its cause and fix the general rule. Do not add one-off exceptions for a single incident.
- Rewrite every project fix as a rule for unseen inputs, such as replacing a fix for one asset with a check that works on any asset.
- Audit an external skill on the real platform before adopting it. Keep the core method, and adapt or drop rules that fail on the target platform or conflict with existing workflows.

## Structure

- Give each skill one job. When combining skills, put supporting steps inside that workflow instead of adding modes.
- Keep shared skills independent of any single project, model, provider or tool. When a skill uses an optional capability such as subagents or a tool server, explain how to finish the work without it.
- In a repository-local skill, keep each fact in one place and link to existing repository documentation rather than copying rules.
- Describe the goal and criteria when multiple approaches work. Add a script or fixed sequence only when deterministic execution prevents errors or repeated work.
- Keep frontmatter under 100 words because it loads in every session. State what the skill does and when to trigger it. Add exclusions only to prevent false matches.
- Require manual invocation, such as `disable-model-invocation: true`, when automatic triggers would disrupt ordinary work.
- Keep `SKILL.md` under 150 lines and move long references into linked files such as `references/api.md`. State when to read each file, and skip extra files when one file is enough.

## Words

- State the mechanism or the number. Cut any sentence that could appear unchanged in another skill.
- Write whole, active-voice sentences with one idea per sentence. Name the actor.
- Spell out arrows and abbreviations. Repeat one name for each concept.
- Use plain, literal words. Write "is" or "has" instead of "serves as" or "features".
- Write "use" instead of "utilize" or "leverage". Replace metaphors and AI filler words such as "crucial", "delve", "enhance", "scaffolding" or "paradigm" with the concrete word.
- Cut filler, vague attributions, generic conclusions, chatbot openers and trailing "-ing" clauses that add no fact.
- Keep hedging to "may" at most. Replace adverbs with stronger verbs or exact numbers.
- State the point instead of writing "not just X, but Y". Avoid false "from X to Y" scales. Do not force ideas into threes.
- Use periods or commas instead of em dashes, en dashes, hyphens used as dashes, or parentheses in their place. Use a colon only before a list or an example.
- Use sentence-case headings and straight quotes. Skip decorative emojis and scattered bolding. Never add a bold label that restates its line.

## Limits

- State what the skill covers and what it does not prove or handle so agents do not overclaim results.
- Enforce strict rules in code, types, tests or linters rather than prose alone.
- Cap retry loops at 3 to 5 rounds, then stop and report what remains unresolved.
- Add human checkpoints before irreversible or subjective steps.
- Name the source of truth when humans and agents edit the same files, such as a design file or configuration file. Tell the agent to inspect the current state before acting.

## Check

- Run the skill in a new session with no prior context on an unseen input. Fix every missing assumption it exposes.
- Run every command and script the skill names in a clean environment. Run each target tool's validator when packaging a plugin.
- Verify that checks pass on valid inputs and fail on broken ones.
- Never weaken a rule or check to make a run pass. When a run fails, check whether the skill is out of date or the implementation has a bug.
- Search the finished file for dashes, parentheses, curly quotes, arrows and the AI filler words above. Then read the whole file yourself to cut repetition and forced lists of three.
- Delete rules that no longer change behavior whenever you edit a skill.
