# Git Hands-on Lab 1: Setup, Configuration & First Commit

## Objectives
- Setup user configuration (`user.name`, `user.email`).
- Integrate custom editor (`core.editor`).
- Create and initialize repository `GitDemo`.
- Add and track `welcome.txt` with multi-line commit.

## Commands Executed
```bash
# Configuration
git config --global user.name "Developer"
git config --global user.email "developer@example.com"
git config --list

# Repository Initialization
mkdir GitDemo && cd GitDemo
git init

# File Creation & Tracking
echo "Welcome to Git Hands-on Lab 1" > welcome.txt
git status
git add welcome.txt
git commit -m "Add welcome.txt file with multi-line content"
git log --oneline
```
