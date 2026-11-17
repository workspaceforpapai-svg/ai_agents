[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)][string]$ProjectPath,
    [ValidateSet("All","Copilot","Claude","Codex")][string]$Platform = "All"
)

$ErrorActionPreference = "Stop"
$target = [System.IO.Path]::GetFullPath($ProjectPath)
if (Test-Path -LiteralPath $target) {
    $existing = Get-ChildItem -LiteralPath $target -Force | Select-Object -First 1
    if ($null -ne $existing) { throw "Target folder exists and is not empty: $target" }
} else {
    New-Item -ItemType Directory -Force -Path $target | Out-Null
}

$install = Join-Path $PSScriptRoot "install.ps1"
& $install -ProjectPath $target -Platform $Platform
Write-Host "Project framework initialized at $target"
Write-Host "Open this folder in VS Code and start with the Orchestrator."
