# Codex Instructions — Advanced

This project uses AI Development Framework v2.0.

Read `MASTER.md`, `GLOBAL-RULES.md`, `AGENT-ORCHESTRATION.md`, `rules/agent-decision-policy.md`, `rules/agent-quality-gates.md`, applicable technology rules, and the active workflow before work.

Inspect Git status, manifests, relevant source, consumers, and tests before editing. Preserve user changes and existing behavior. Keep changes narrow. Ask for approval before destructive/irreversible operations, production actions, migrations, security/auth/tenant changes, secrets/permissions, breaking API changes, broad upgrades, financial actions, or external communications.

Use role prompts in `.codex/agents/` when assigning specialist work. Actual multi-agent execution depends on the Codex host/client capabilities; do not claim automatic subagent execution if only a prompt file is available. Report exact test evidence and limitations.
