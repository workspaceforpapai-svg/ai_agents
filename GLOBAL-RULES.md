# Global Engineering Standards — Advanced Edition

## A. Discovery and change control
- Inspect the project before proposing a stack or architecture.
- Identify language/runtime/framework versions from manifests and configuration.
- Identify package manager from lockfiles; do not switch package managers.
- Inspect current Git changes and avoid touching user-owned work.
- Identify consumers and call sites before changing shared contracts.
- Maintain a clear scope boundary and explain unavoidable adjacent changes.

## B. Code quality
- Write readable, cohesive, testable code.
- Use meaningful domain names and consistent project conventions.
- Prefer composition and explicit dependencies.
- Avoid unnecessary abstraction, premature optimization, hidden side effects, and duplicated business rules.
- Keep functions and modules focused.
- Handle expected failures explicitly; do not swallow exceptions.
- Avoid dead code, magic values, unsafe casts, and unbounded operations.
- Do not add source comments unless they explain non-obvious intent or constraints.
- Do not put decorative icons or emoji in source code.

## C. Architecture
- Preserve existing architecture unless change is justified.
- Separate presentation, application/domain logic, and infrastructure where the project supports it.
- Define ownership of data and side effects.
- Avoid circular dependencies and leaking persistence details into unrelated layers.
- Document important architecture decisions with context, options, decision, and consequences.
- Design for failure and graceful degradation when external services are involved.

## D. Security and privacy
- Validate and normalize untrusted input at boundaries.
- Authorize every protected operation server-side and check object ownership/tenant scope.
- Use parameterized queries or safe ORM APIs.
- Encode output for its context; avoid unsafe HTML and dynamic code execution.
- Protect against XSS, CSRF, SQL/NoSQL injection, SSRF, path traversal, open redirects, request smuggling, and unsafe deserialization as applicable.
- Apply secure password hashing through maintained libraries.
- Use least-privilege service accounts and secrets managers/environment variables.
- Do not log passwords, tokens, payment data, or unnecessary personal data.
- Apply rate limits, timeouts, size limits, and abuse controls to sensitive endpoints.
- Verify webhook signatures and make webhook processing idempotent.
- Keep dependencies maintained and review security advisories.

## E. API and backend
- Follow existing API versioning and response conventions.
- Define request, response, error, authentication, authorization, and pagination behavior.
- Validate types, ranges, formats, ownership, and state transitions.
- Use correct HTTP status codes.
- Add idempotency for retryable financial/booking operations where applicable.
- Use transactions for multi-step consistency.
- Avoid N+1 queries, unbounded reads, and unsafe dynamic query construction.
- Apply timeouts, retries with backoff, circuit breaking, and bulkheads where justified.
- Do not retry non-idempotent operations blindly.

## F. Frontend and mobile
- Reuse the current design system and component patterns.
- Support responsive layouts, keyboard navigation, semantic structure, and accessible names.
- Implement loading, empty, success, validation, offline, and error states where relevant.
- Avoid trusting client-side authorization.
- Prevent duplicate submissions and stale async updates.
- Handle lifecycle, navigation, permissions, secure storage, and platform differences on mobile.
- Avoid unnecessary rerenders and expensive client bundles.

## G. Database and data lifecycle
- Inspect schema, indexes, constraints, relationships, query patterns, and tenant boundaries.
- Use reviewed migrations and backward-compatible deployment sequencing.
- Prefer expand-migrate-contract for high-availability schema changes.
- Plan backfill, locking, runtime, rollback, and backup.
- Use constraints to enforce invariants where appropriate.
- Use transactions for consistency.
- Never run production migrations or destructive data operations without explicit approval.
- Minimize sensitive data retention and use anonymized fixtures.

## H. Testing
- Derive tests from acceptance criteria and risk.
- Cover happy paths, validation failures, permissions, boundary values, concurrency, retries, and regressions as relevant.
- Keep tests deterministic and isolated.
- Prefer real integration tests at critical boundaries over excessive mocking.
- Never weaken tests to hide defects.
- Record exact commands, environment, outcomes, and skipped checks.

## I. Performance and reliability
- Measure before optimizing.
- Set sensible timeouts, limits, pagination, and cancellation.
- Avoid N+1 queries and unbounded memory growth.
- Use caching only with clear invalidation and privacy boundaries.
- Consider concurrency, race conditions, queue retries, dead-letter handling, and graceful shutdown.
- Add useful logs, metrics, traces, and correlation IDs without sensitive payloads.

## J. UX and accessibility
- Follow brand and design references where supplied.
- Establish consistent typography, spacing, colors, component states, and responsive behavior.
- Ensure keyboard access, focus visibility, labels, contrast, and semantic HTML.
- Do not invent production copy or assets when authoritative content is available.
- Make error messages actionable without exposing internal details.

## K. Delivery
- Do not commit, merge, publish, deploy, or change production unless requested and approved.
- Keep diffs focused and reviewable.
- Update docs and examples when behavior or contracts change.
- Report what changed, why, how verified, and what remains uncertain.
