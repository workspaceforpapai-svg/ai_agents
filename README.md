# AI Development Framework — Advanced v2.0

Reusable, GitHub-managed multi-agent engineering instructions for VS Code Copilot, Claude Code, and Codex.

## Included
- 30 advanced specialist agent profiles.
- 30 native GitHub Copilot custom agent definitions with role-appropriate tool declarations and Orchestrator handoffs.
- 30 Claude Code subagent definitions with role-specific tool declarations.
- 30 Codex role prompts plus project-level `AGENTS.md`.
- Advanced global operating contract, orchestration protocol, security and technology rules.
- Controlled workflows for discovery, feature work, bugs, APIs, UI, migrations, parallel work, security, quality review, incidents, and releases.
- PowerShell installation, update, validation, and new-project scripts.

## Quick start
```powershell
git clone https://github.com/YOUR-ORG/AI-Development-Framework.git
cd AI-Development-Framework
.\scripts\validate.ps1
```
Install into a project:
```powershell
.\scripts\install.ps1 -ProjectPath "D:\Projects\MyApp" -Platform All
```
Initialize a new empty project:
```powershell
.\scripts\new-project.ps1 -ProjectPath "D:\Projects\NewApp" -Platform All
```
Update from the current local framework checkout:
```powershell
.\scripts\update.ps1 -ProjectPath "D:\Projects\MyApp" -Platform All -Force
```
**Caution:** `-Force` overwrites framework files at the destination, including platform instruction files. Back up or commit project-specific edits first. Without `-Force`, existing files are skipped.

## VS Code Copilot
Open the target project, open Chat in Agent mode, select `Orchestrator`, request repository discovery without edits, review the plan, then use available handoffs. Native definitions: `.github/agents/*.agent.md`.

## Claude Code
Project instructions: `CLAUDE.md`. Native subagents: `.claude/agents/*.md`. Ask Claude to use a named subagent for a bounded task. Verify tool compatibility with your installed version.

## Codex
Project instructions: `AGENTS.md`. Role prompts: `.codex/agents/*.md`. These are reusable instructions; do not assume they register as executable subagents in every Codex client.

## Controlled model
Discovery -> Requirements -> Plan -> Human approval where required -> Bounded implementation -> Tests -> Independent review -> Human release approval.

Use only relevant agents. Parallelize only independent tasks with non-overlapping ownership. Prompts are not security sandboxes; enforce critical controls through OS permissions, GitHub branch protection, CI, protected environments, backups, and human review.

## GitHub
Create a private repository, then:
```powershell
git init
git add .
git commit -m "AI Development Framework v2.0"
git branch -M main
git remote add origin https://github.com/YOUR-ORG/AI-Development-Framework.git
git push -u origin main
```
Protect `main` with pull-request review and required CI checks. Never commit secrets, `.env`, credentials, customer data, or production dumps.
