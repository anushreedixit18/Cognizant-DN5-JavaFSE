#!/bin/bash
set -e

echo "=== Git-HOL-1: Git Setup and Configuration Demo ==="

# Step 1: Configure user level configuration
git config --global user.name "Developer" || true
git config --global user.email "developer@example.com" || true

# Display current configuration
echo "Checking git configuration:"
git config --list | head -n 10

# Step 2: Initialize local Git repository GitDemo
REPO_DIR="/tmp/GitDemo_HOL1"
rm -rf "$REPO_DIR"
mkdir -p "$REPO_DIR"
cd "$REPO_DIR"

git init
echo "Initialized GitDemo repository."

# Step 3: Add welcome.txt file
echo "Welcome to Git Hands-on Lab 1" > welcome.txt
echo "This is line 2 of welcome.txt" >> welcome.txt

git status
git add welcome.txt
git commit -m "Add welcome.txt file with multi-line content"

echo "Log output:"
git log --oneline

echo "=== Git-HOL-1 Completed Successfully ==="
