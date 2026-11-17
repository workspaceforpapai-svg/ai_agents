# Technology Adaptation Rules

Detect actual languages, runtime/framework versions, package manager, and architecture from repository files before choosing patterns.

## WordPress / WooCommerce
Follow WordPress conventions; use capability checks, nonces, sanitization, validation, escaping, and `$wpdb->prepare()` for dynamic SQL. Do not edit core/vendor files. Preserve hooks, routes, shortcodes, cron, and WooCommerce lifecycle behavior.

## Laravel
Follow installed Laravel version. Use Form Requests, Policies/Gates, transactions, queues, and Eloquent relationships appropriately. Avoid mass-assignment vulnerabilities and N+1 queries. Add feature tests and migrations.

## React / Next.js
Respect router and server/client rendering boundaries. Validate data server-side. Never expose server secrets to client bundles. Follow existing state and component patterns. Verify installed Next.js version and caching semantics.

## React Native / Expo
Respect installed versions and native architecture. Inspect native module availability and platform-specific behavior. Handle permissions, secure storage, lifecycle, navigation, and offline/error states.

## Node.js / NestJS
Follow module/provider/controller conventions, DTO validation, guards, dependency injection, async error handling, graceful shutdown, and tests.

## General
Use the existing package manager and lockfile. Do not perform major version upgrades without approval.
