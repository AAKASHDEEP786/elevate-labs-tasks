# TASKS.md

## Day 4 — Version-Controlled DevOps Project
**Date:** 2025-09-26

### Steps completed
1. Initialized repository and pushed to GitHub.
2. Created `main`, `dev` and `feature/add-terraform-setup` branches.
3. Added `.gitignore` to ignore sensitive files and state.
4. Opened PR: `feature/add-terraform-setup` → `dev`.
5. Merged `dev` → `main` and created tag `v0.1.0`.

### Commits
- `chore: initialize repo with README and docs`
- `chore: add .gitignore`
- `feat(terraform): add initial terraform scaffold`

### Notes / Issues
- Remember: never commit `*.tfstate` or `.env`.

### Next tasks
- Add GitHub Actions CI workflow for linting and Terraform validation.
- Add branch protection rules on GitHub (require PR reviews).
