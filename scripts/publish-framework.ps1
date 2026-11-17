[CmdletBinding()]
param(
    [string]$Remote = "origin",
    [string]$Branch = "main",
    [switch]$CreateCommit
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
Push-Location $root
try {
    if (-not (Test-Path ".git")) { throw "This framework folder is not a Git repository." }
    git status --short
    if ($LASTEXITCODE -ne 0) { throw "git status failed." }
    if ($CreateCommit) {
        git add .
        if ($LASTEXITCODE -ne 0) { throw "git add failed." }
        git commit -m "Update AI development framework"
        if ($LASTEXITCODE -ne 0) { throw "git commit failed or nothing to commit." }
    }
    git push $Remote $Branch
    if ($LASTEXITCODE -ne 0) { throw "git push failed. Check remote, branch, and authentication." }
} finally {
    Pop-Location
}
