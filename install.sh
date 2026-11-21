#!/bin/sh
# Install or update god-stack for Claude Code, Codex, Copilot CLI and Antigravity.
#   Install or update: curl -fsSL https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.sh | sh
#   Uninstall:         curl -fsSL https://raw.githubusercontent.com/craigrusselltiu/god-stack/main/install.sh | sh -s -- --uninstall

dir="$HOME/.god-stack"
plugin="$dir/plugins/god-stack"
id="god-stack@god-stack"

has() { command -v "$1" >/dev/null 2>&1; }
step() {
    name=$1
    shift
    has "$name" || return 0
    if out=$("$@" 2>&1); then echo "  $name"; else echo "  $name failed: $out"; fi
}
without_cron() { crontab -l 2>/dev/null | grep -v 'god-stack/install.sh'; }

claude_add() { claude plugin marketplace add "$dir" && claude plugin install "$id"; }
copilot_add() { copilot plugin marketplace add "$dir" && copilot plugin install "$id"; }
codex_add() { codex plugin marketplace add "$dir" && codex plugin add "$id"; }
agy_add() { agy plugin install "$plugin"; }
claude_remove() { claude plugin uninstall "$id"; claude plugin marketplace remove god-stack; }
copilot_remove() { copilot plugin uninstall god-stack; copilot plugin marketplace remove god-stack; }
codex_remove() { codex plugin remove "$id"; codex plugin marketplace remove god-stack; }
agy_remove() { agy plugin uninstall god-stack; }

if [ "${1:-}" = "--uninstall" ]; then
    has crontab && without_cron | crontab -
    for tool in claude copilot codex agy; do step "$tool" "${tool}_remove"; done
    rm -rf "$dir"
    echo "Removed god-stack."
    exit 0
fi

has git || { echo "god-stack needs git: https://git-scm.com/downloads" >&2; exit 1; }
if [ -d "$dir/.git" ]; then
    git -C "$dir" pull --ff-only --quiet
else
    git clone --quiet --depth 1 https://github.com/craigrusselltiu/god-stack "$dir"
fi || { echo "Could not download god-stack." >&2; exit 1; }

# Claude Code and Copilot CLI load the plugin in place from the clone.
# Codex and Antigravity keep a copy, which re-adding refreshes.
echo "god-stack installed for:"
for tool in claude copilot codex agy; do step "$tool" "${tool}_add"; done

# Re-run this script at startup and daily to pull updates, with the current PATH so cron finds the CLIs.
if has crontab; then
    job="PATH='$PATH' sh '$dir/install.sh' >/dev/null 2>&1"
    { without_cron; echo "@reboot $job"; echo "0 12 * * * $job"; } | crontab -
    echo "Updates run at startup and daily."
fi
