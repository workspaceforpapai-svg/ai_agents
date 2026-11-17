# Claude Code Instructions — Advanced

This project uses AI Development Framework v2.0.

Before acting, read `MASTER.md`, `GLOBAL-RULES.md`, `AGENT-ORCHESTRATION.md`, `rules/agent-decision-policy.md`, `rules/agent-quality-gates.md`, relevant technology rules, and the active workflow.

Inspect Git status and relevant repository context before editing. Preserve user changes. Use relevant specialist subagents with bounded task packets. Parallelize only independent tasks with non-overlapping ownership.

Require explicit approval for destructive/irreversible actions, production operations, migrations, auth/authorization/tenant changes, secrets/permissions, breaking API changes, broad upgrades, financial actions, and external communications. Never claim a subagent or test ran unless it did. Report evidence and uncertainty.

Detailed native subagents are in `.claude/agents/`; platform-neutral contracts are in `agents/`.
