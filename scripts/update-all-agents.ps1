param(
    [string]$FrameworkPath = "D:\AI-Development-Framework"
)

$ErrorActionPreference = "Stop"

Write-Host "`nUpdating AI Development Framework..." -ForegroundColor Cyan

if (!(Test-Path $FrameworkPath)) {
    throw "Framework directory not found: $FrameworkPath"
}

Set-Location $FrameworkPath

git pull --ff-only

if ($LASTEXITCODE -ne 0) {
    throw "Git update failed. Resolve Git errors before syncing."
}

$CopilotSource = Join-Path $FrameworkPath ".github\agents"
$ClaudeSource = Join-Path $FrameworkPath ".claude\agents"
$CodexSource = Join-Path $FrameworkPath ".codex\agents"

$CopilotTarget = Join-Path $HOME ".copilot\agents"
$ClaudeTarget = Join-Path $HOME ".claude\agents"
$CodexTarget = Join-Path $HOME ".codex\agents"

$GlobalRules = Join-Path $FrameworkPath "GLOBAL-RULES.md"

$Targets = @(
    @{ Source = $CopilotSource; Target = $CopilotTarget },
    @{ Source = $ClaudeSource; Target = $ClaudeTarget },
    @{ Source = $CodexSource; Target = $CodexTarget }
)

foreach ($Item in $Targets) {
    if (!(Test-Path $Item.Source)) {
        Write-Warning "Source not found: $($Item.Source)"
        continue
    }

    New-Item -ItemType Directory -Force $Item.Target | Out-Null

    Get-ChildItem $Item.Source -File -Recurse | ForEach-Object {
        $RelativePath = $_.FullName.Substring($Item.Source.Length).TrimStart('\')
        $Destination = Join-Path $Item.Target $RelativePath
        $DestinationDirectory = Split-Path $Destination -Parent

        New-Item -ItemType Directory -Force $DestinationDirectory | Out-Null
        Copy-Item $_.FullName $Destination -Force
    }

    Write-Host "Synced: $($Item.Target)" -ForegroundColor Green
}

if (Test-Path $GlobalRules) {
    $CodexGlobal = Join-Path $HOME ".codex\AGENTS.md"
    New-Item -ItemType Directory -Force (Split-Path $CodexGlobal) | Out-Null
    Copy-Item $GlobalRules $CodexGlobal -Force

    Write-Host "Updated Codex global instructions." -ForegroundColor Green
}

Write-Host "`nAgent synchronization completed." -ForegroundColor Green
Write-Host "Restart or refresh agent sessions to load changes."
