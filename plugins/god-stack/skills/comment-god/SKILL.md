---
name: comment-god
description: Remove unnecessary comments and diagnostic suppressions in scoped code, and fix the underlying code when needed.
disable-model-invocation: true
---

# Comment god

You are a comment god. Your job is to remove every comment and diagnostic suppression without a proven exception, and fix underlying code instead of excusing it in prose.

## Audit

- Audit the caller's files or diff. Otherwise audit staged changes, unstaged changes and relevant new files against the merge base with the requested or PR target branch. Default to the repository's default branch or `main`.
- Read surrounding code for context, and keep all edits inside scope.
- When delegation is available and authorized, audit with a fresh read-only reviewer given the scope and criteria in this skill. Ask for file and line references, evidence for each keep and the exact symbols that need a fix. Run the same audit yourself when working alone.
- Remove every comment by default: narration, banners, commented-out code, stale explanations and prose that excuses workarounds. When a comment explains surprising behavior in code you can change, flag the exact symbol for a rename, extraction, stronger type or redesign.
- Inspect every scoped lint or type suppression, including any a reviewer missed. Read the exact rule or diagnostic, and fix any hidden correctness or safety issue at the named symbol before removing the suppression.
- Trace warning claims such as `IMPORTANT` and `do not remove` through the symbol and its callers. When the reason stays unclear, inspect commits, PR discussions, issues or design records. When the record is incomplete and you cannot verify whether the warning still applies, leave it intact and report it as unresolved instead of guessing. Cite evidence behind consequential decisions, label inferences and note gaps in the record.
- Verify every review finding against the diff and current behavior. Reject scope escapes, reviewer edits to application code, unsupported findings and flags on intentional behavior with a proven exception. Retry a rejected delegated review at most once with the reasons, and report unresolved findings.

## Exceptions

- Keep a comment or suppression only when current evidence proves an exception still applies.
- Keep legal and license notices.
- Keep documentation that defines a public API contract.
- Keep non-obvious constraints imposed by an external dependency, platform or protocol outside your control.
- Keep formatter directives such as `prettier-ignore`, lint suppressions for faulty or style-only rules and directives in negative tests that assert an expected error.
- Keep issue or RFC links that document a constraint the code cannot express.

## Fixes

- For review-only requests, stop after the audit and report findings without editing files.
- Apply accepted removals and trivial fixes directly.
- For structural fixes, trace affected systems and callers before editing, then sketch two distinct designs with concrete types, function signatures and module boundaries. For a large or contested design, get independent sketches through delegation when available and authorized.
- Choose the design with one owner per piece of state, one canonical path per operation and the least caller knowledge. Complete one design pass for all accepted findings that need it.
- Implement the smallest in-scope changes that eliminate the root cause and remove the workaround. Verify the implementation against the sketch, and revisit that part of the design if workarounds repeat.
- Restore a removed comment only when a verified exception applies, and report any needed fix outside scope.
- When prose states an internal constraint, offer the cheapest in-scope enforcement through a type, runtime check, test or CI lint. Honor prior approval. Otherwise ask before adding enforcement in interactive sessions, and add enforcement in unattended sessions only when the caller already approved it.
- Apply approved enforcement before removing its comment. If enforcement is declined or unavailable, remove the comment when removal is accepted and report the constraint as unenforced.

## Check

- After editing, inspect the final diff and run relevant checks.
- Report file and line findings for review-only runs. For edit runs, report removal count, restorations, any review retry, the design choice and fixes, enforcement offered or applied and open or out-of-scope findings.
