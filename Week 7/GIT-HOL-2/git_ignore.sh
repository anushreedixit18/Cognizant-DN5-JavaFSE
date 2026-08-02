#!/bin/bash
set -e

echo "=== Git-HOL-2: Git Ignore Demo ==="

REPO_DIR="/tmp/GitDemo_HOL2"
rm -rf "$REPO_DIR"
mkdir -p "$REPO_DIR"
cd "$REPO_DIR"

git init
echo "Initial commit file" > app.txt
git add app.txt
git commit -m "Initial commit"

# Create unwanted files & folders
echo "Debug log data" > debug.log
mkdir -p log
echo "Server error log" > log/server.log

echo "Status BEFORE adding .gitignore:"
git status

# Create .gitignore ignoring *.log and log/
cat << 'EOF' > .gitignore
*.log
log/
EOF

echo "Status AFTER adding .gitignore:"
git status

git add .gitignore
git commit -m "Add .gitignore to ignore log files and folders"

echo "=== Git-HOL-2 Completed Successfully ==="
