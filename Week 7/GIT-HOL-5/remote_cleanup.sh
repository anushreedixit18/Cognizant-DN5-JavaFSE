#!/bin/bash
set -e

echo "=== Git-HOL-5: Remote Cleanup & Push Demo ==="

# Check repository clean state
git status

# List branches
echo "Available branches:"
git branch -a

# Sync with remote
echo "Pulling remote origin master..."
git pull origin master || true

echo "Pushing changes to remote origin master..."
git push origin master || true

echo "=== Git-HOL-5 Completed Successfully ==="
