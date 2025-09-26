# DevOps Project – Git Workflow and Version Control

This project demonstrates how to manage a **DevOps project** using **Git best practices**.  
It covers branching strategies, pull requests, tags, documentation, and handling conflicts.  

---

## 📌 Objective
- Learn version control workflows with Git and GitHub.  
- Manage a DevOps project using **branches, commits, pull requests, and tags**.  

---

## 🛠️ Tools Used
- **Git** (version control system)  
- **GitHub** (remote repository hosting)  

---

## 🚀 Tasks Completed

### ✅ Task 1: Initialize Repository
- Initialized a new Git repository.  
- Connected it to a remote GitHub repository.  
- First commit pushed to `main`.  

### ✅ Task 2: Branching
- Created branches:  
  - `main` → stable code  
  - `dev` → development branch  
  - `feature/*` → feature-specific branches  
- Followed branch naming conventions (e.g., `feature/add-terraform-setup`).  

### ✅ Task 3: Pull Requests & Merging
- Developers pushed code to **feature branches**.  
- Opened **Pull Requests (PRs)** to merge into `dev`.  
- After review, merged `dev` into `main`.  
- Practiced resolving **merge conflicts** both on GitHub and locally.  

### ✅ Task 4: Documentation
- Added a **README.md** to explain the project.  
- Used markdown to document tasks, workflow, and outcomes.  

### ✅ Task 5: .gitignore
- Added `.gitignore` file to exclude unnecessary files (e.g., `.terraform/`, `*.tfstate`, `.DS_Store`).  

### ✅ Task 6: Git Tags
- Created Git **tags** to mark project milestones/releases.  
- Example:  
  ```bash
  git tag -a v1.0 -m "Initial stable release"
  git push origin v1.0

