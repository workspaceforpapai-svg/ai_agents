# Example: Service Booking SaaS

User request: Build a multi-tenant service booking SaaS with a NestJS API, Next.js admin, and React Native app.

Suggested controlled delegation:
1. Project Manager + Business Analyst: actors, tenant workflows, booking lifecycle, acceptance criteria.
2. System Architect: service boundaries, auth, tenant resolution, integration boundaries.
3. Database Architect: tenant-aware schema, constraints, indexes, migrations.
4. UI/UX Designer: admin, provider, and customer journeys and design tokens.
5. Security Engineer: tenant isolation, role permissions, payment/webhook threat model.
6. NestJS Developer + API Engineer: modules, DTOs, guards, services, contracts.
7. Next.js Developer + Frontend Developer: admin interface.
8. React Native Developer: mobile flows.
9. QA + Test Automation: API, tenant-isolation, UI, mobile and regression tests.
10. Code Reviewer + Release Manager + DevOps: review and release readiness.

Human approval gates: architecture, tenant data model, payment flow, production migrations, credentials, and deployment.
