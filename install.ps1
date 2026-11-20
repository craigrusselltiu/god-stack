# Install or update one-stack for Claude Code, Codex, Copilot CLI and Antigravity.
#   Install or update: irm https://raw.githubusercontent.com/craigrusselltiu/one-stack/main/install.ps1 | iex
#   Uninstall:         & ([scriptblock]::Create((irm https://raw.githubusercontent.com/craigrusselltiu/one-stack/main/install.ps1))) -Uninstall
param([switch]$Uninstall)

$dir = Join-Path $HOME '.one-stack'
$plugin = Join-Path $dir 'plugins\one-stack'
$id = 'one-stack@one-stack'
$task = 'one-stack update'

function Has($name) { [bool](Get-Command $name -ErrorAction SilentlyContinue) }
function Step($name, [scriptblock]$commands) {
    if (-not (Has $name)) { return }
    $out = & $commands 2>&1 | Out-String
    if ($LASTEXITCODE) { Write-Host "  $name failed: $($out.Trim())" -ForegroundColor Yellow }
    else { Write-Host "  $name" }
}

if ($Uninstall) {
    Unregister-ScheduledTask -TaskName $task -Confirm:$false -ErrorAction SilentlyContinue
    Step claude { claude plugin uninstall $id; claude plugin marketplace remove one-stack }
    Step copilot { copilot plugin uninstall one-stack; copilot plugin marketplace remove one-stack }
    Step codex { codex plugin remove $id; codex plugin marketplace remove one-stack }
    Step agy { agy plugin uninstall one-stack }
    Remove-Item -Recurse -Force $dir -ErrorAction SilentlyContinue
    Write-Host 'Removed one-stack.'
    return
}

if (-not (Has git)) { throw 'one-stack needs git: https://git-scm.com/downloads' }
if (Test-Path (Join-Path $dir '.git')) { git -C $dir pull --ff-only --quiet }
else { git clone --quiet --depth 1 https://github.com/craigrusselltiu/one-stack $dir }
if ($LASTEXITCODE) { throw 'Could not download one-stack.' }

# Claude Code and Copilot CLI load the plugin in place from the clone.
# Codex and Antigravity keep a copy, which re-adding refreshes.
Write-Host 'one-stack installed for:'
Step claude { claude plugin marketplace add $dir; claude plugin install $id }
Step copilot { copilot plugin marketplace add $dir; copilot plugin install $id }
Step codex { codex plugin marketplace add $dir; codex plugin add $id }
Step agy { agy plugin install $plugin }

# Re-run this script at sign-in and daily to pull updates. conhost --headless hides the window.
$run = "--headless powershell.exe -NoProfile -ExecutionPolicy Bypass -File `"$dir\install.ps1`""
Register-ScheduledTask -TaskName $task -Force `
    -Action (New-ScheduledTaskAction -Execute 'conhost.exe' -Argument $run) `
    -Trigger (New-ScheduledTaskTrigger -AtLogOn -User "$env:USERDOMAIN\$env:USERNAME"), (New-ScheduledTaskTrigger -Daily -At 12pm) `
    -Settings (New-ScheduledTaskSettingsSet -StartWhenAvailable -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -ExecutionTimeLimit (New-TimeSpan -Minutes 10)) | Out-Null
Write-Host 'Updates run at sign-in and daily.'
