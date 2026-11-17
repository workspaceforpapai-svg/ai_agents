[CmdletBinding()]
param()
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$required = @("MASTER.md","GLOBAL-RULES.md","AGENT-ORCHESTRATION.md","README.md","CLAUDE.md","AGENTS.md","VERSION",".github/copilot-instructions.md","rules/agent-decision-policy.md","rules/agent-quality-gates.md","workflows/agent-handoff.md","workflows/definition-of-done.md","config/framework.yml")
$missing = @()
foreach ($item in $required) {
    if (-not (Test-Path -LiteralPath (Join-Path $root $item))) { $missing += $item }
}
$counts = @{
    "Core profiles" = (Get-ChildItem (Join-Path $root "agents") -Filter "*.md" -File).Count
    "Copilot agents" = (Get-ChildItem (Join-Path $root ".github/agents") -Filter "*.agent.md" -File).Count
    "Claude subagents" = (Get-ChildItem (Join-Path $root ".claude/agents") -Filter "*.md" -File).Count
    "Codex role prompts" = (Get-ChildItem (Join-Path $root ".codex/agents") -Filter "*.md" -File).Count
}
$counts.GetEnumerator() | Sort-Object Name | ForEach-Object { Write-Host "$($_.Name): $($_.Value)" }
if ($missing.Count -gt 0) { throw ("Missing required files: " + ($missing -join ", ")) }
foreach ($entry in $counts.GetEnumerator()) {
    if ($entry.Value -ne 30) { throw "Expected 30 $($entry.Key), found $($entry.Value)." }
}
Write-Host "Framework v2.0 validation passed." -ForegroundColor Green
