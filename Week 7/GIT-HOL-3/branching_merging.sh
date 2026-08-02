#!/bin/bash
set -e

echo "=== Git-HOL-3: Branching & Merging Demo ==="

REPO_DIR="/tmp/GitDemo_HOL3"
rm -rf "$REPO_DIR"
mkdir -p "$REPO_DIR"
cd "$REPO_DIR"

git init
echo "Root README" > README.md
git add README.md
git commit -m "Initial commit on master"

# 1. Create branch GitNewBranch & list branches
git branch GitNewBranch
echo "Branch list:"
git branch -a

# 2. Switch to branch
git checkout GitNewBranch
echo "Feature content" > feature.txt
git add feature.txt
git commit -m "Add feature.txt in GitNewBranch"

# 3. Switch back to master
git checkout master

# 4. List diffs
echo "Diff between master and GitNewBranch:"
git diff master..GitNewBranch

# 5. Merge branch to master
git merge GitNewBranch

# 6. Observe log graph
echo "Log graph:"
git log --oneline --graph --decorate

# 7. Delete branch
git branch -d GitNewBranch
echo "Branch deleted successfully."
git status

echo "=== Git-HOL-3 Completed Successfully ==="
