# Safe Parallel Work

Parallelize only independent tasks with explicit non-overlapping file ownership, agreed shared contracts, separate acceptance criteria, and an integration owner. Do not parallelize concurrent edits to the same file, unresolved architecture, moving-diff review, or production operations. Integrate in batches, inspect the combined diff, and run regression checks.