# Working Examples

## 1. New project discovery (start with Orchestrator)
```text
Act as the Orchestrator. Read the framework instructions and inspect this repository.
Do not modify files. Identify the stack, architecture, modules, data stores, integrations,
existing tests, and Git status. Produce a project analysis and a phased development roadmap.
List assumptions and ask only essential questions.
```

## 2. Feature development
```text
Use the feature-development workflow. Implement [FEATURE] with these acceptance criteria:
[CRITERIA]. Inspect existing behavior and callers first. Prepare a plan and identify
database/security/API impacts. Wait for approval for any approval-gated change.
After approval, implement, test, and report exact evidence.
```

## 3. API implementation
```text
Use the API Engineer and Backend Developer roles. Add [ENDPOINT] following existing
API conventions. Define request/response/error contracts, validation, authentication,
authorization, tenant scoping, pagination/idempotency where relevant, and tests.
Do not modify unrelated endpoints.
```

## 4. UI implementation
```text
Use UI/UX Designer and Frontend Developer roles. Inspect the existing design system
and implement [SCREEN/COMPONENT]. Support responsive states, keyboard accessibility,
loading/empty/error/success states, and existing API contracts. Do not invent brand rules.
```

## 5. Bug fix
```text
Use the bug-fixing workflow. Reproduce [BUG], identify root cause, add a regression test,
make the smallest fix, and run relevant regression tests. Do not refactor unrelated code.
```

## 6. Security review
```text
Perform an authorized static/application security review of [SCOPE]. Do not exploit
third-party systems or modify production. Report severity, evidence, impact, and fixes.
Prioritize auth, authorization, tenant isolation, input handling, uploads, secrets,
webhooks, and sensitive-data exposure.
```

## 7. Final review
```text
Review the current Git diff independently. Check correctness, security, maintainability,
backward compatibility, tests, and unrelated changes. Do not edit files. Report findings
by severity with file/line references and concrete remediation.
```

## 8. Release readiness
```text
Use the production-release workflow. Prepare a release readiness report covering build,
tests, security findings, migrations, environment configuration, secrets, backups,
monitoring, rollback, release notes, and outstanding approvals. Do not deploy.
```
