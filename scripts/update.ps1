[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)][string]$ProjectPath,
    [ValidateSet("All","Copilot","Claude","Codex")][string]$Platform = "All",
    [switch]$Force
)

$ErrorActionPreference = "Stop"
$script = Join-Path $PSScriptRoot "install.ps1"
if (-not (Test-Path -LiteralPath $ProjectPath)) { throw "Project path not found: $ProjectPath" }
& $script -ProjectPath $ProjectPath -Platform $Platform -Force:$Force
