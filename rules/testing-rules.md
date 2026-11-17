# Testing Rules
- Identify existing test framework and commands before adding tooling.
- Test observable behavior, not implementation details unnecessarily.
- Include positive, negative, boundary, permission, and regression scenarios.
- Keep tests deterministic and isolate external services.
- Use mocks only at appropriate boundaries; retain meaningful integration coverage.
- Never skip, delete, or weaken a failing test without understanding and documenting why.
- Report test command, environment, pass/fail/skip counts, and limitations.
