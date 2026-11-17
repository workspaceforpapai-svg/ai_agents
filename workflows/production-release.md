# Production Release Workflow
1. Release Manager inventories changes, version, compatibility, migrations, and dependencies.
2. QA reports test evidence and known failures.
3. Security Engineer reviews sensitive changes and outstanding findings.
4. DevOps validates build, environment variables, secrets handling, backups, monitoring, and rollback.
5. Documentation Engineer updates release notes and runbooks.
6. Human explicitly approves deployment and any production migration.
7. Execute only approved release steps.
8. Verify health checks and critical user journeys.
9. Report release result, monitoring, rollback status, and follow-up actions.
