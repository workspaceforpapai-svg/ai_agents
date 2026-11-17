[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)][string]$ProjectPath,
    [ValidateSet("All","Copilot","Claude","Codex")][string]$Platform = "All",
    [switch]$Force
)

$ErrorActionPreference = "Stop"
$source = Split-Path -Parent $PSScriptRoot
$target = [System.IO.Path]::GetFullPath($ProjectPath)

if (-not (Test-Path -LiteralPath $target)) {
    throw "Project path does not exist: $target. Use new-project.ps1 to create it."
}

function Copy-FrameworkFile([string]$relative) {
    $src = Join-Path $source $relative
    $dst = Join-Path $target $relative
    if (-not (Test-Path -LiteralPath $src)) { throw "Framework source missing: $relative" }
    if ((Test-Path -LiteralPath $dst) -and -not $Force) {
        Write-Warning "Skipping existing file: $relative (use -Force to overwrite)"
        return
    }
    $parent = Split-Path -Parent $dst
    New-Item -ItemType Directory -Force -Path $parent | Out-Null
    Copy-Item -LiteralPath $src -Destination $dst -Force
    Write-Host "Installed $relative"
}

$common = @(
    "MASTER.md","GLOBAL-RULES.md","AGENT-ORCHESTRATION.md",
    "rules","workflows","templates","config","agents"
)
foreach ($item in $common) { Copy-FrameworkFile $item }

if ($Platform -in @("All","Copilot")) {
    Copy-FrameworkFile ".github/copilot-instructions.md"
    Copy-FrameworkFile ".github/agents"
}
if ($Platform -in @("All","Claude")) {
    Copy-FrameworkFile "CLAUDE.md"
    Copy-FrameworkFile ".claude/agents"
}
if ($Platform -in @("All","Codex")) {
    Copy-FrameworkFile "AGENTS.md"
    Copy-FrameworkFile ".codex/agents"
}

Write-Host "Installation completed. Review project instructions and Git diff before use." -ForegroundColor Green
