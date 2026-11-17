# Database Migration Workflow
1. Inspect schema, data volume assumptions, constraints, and application versions.
2. Classify migration as additive, backfill, or destructive.
3. Define deployment order, lock risk, runtime, backup, rollback, and compatibility.
4. Prefer expand-migrate-contract for zero/low-downtime changes.
5. Obtain explicit approval for destructive or production migrations.
6. Test on representative non-production data.
7. Verify integrity, indexes, and application compatibility.
8. Document rollback limitations and post-migration checks.
