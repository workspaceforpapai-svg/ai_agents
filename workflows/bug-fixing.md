# Bug Fix Workflow
1. Capture expected vs actual behavior, reproduction steps, environment, and logs.
2. Reproduce before changing code where possible.
3. Trace root cause; do not patch symptoms blindly.
4. Add a regression test that fails before the fix when practical.
5. Implement a minimal fix without unrelated refactoring.
6. Run regression and adjacent tests.
7. Report root cause, fix, evidence, and limitations.
