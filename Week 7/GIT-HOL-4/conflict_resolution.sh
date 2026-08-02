#!/bin/bash
set -e

echo "=== Git-HOL-4: Conflict Resolution Demo ==="

REPO_DIR="/tmp/GitDemo_HOL4"
rm -rf "$REPO_DIR"
mkdir -p "$REPO_DIR"
cd "$REPO_DIR"

git init
echo "Root file" > root.txt
git add root.txt
git commit -m "Initial commit"

# 1. Create branch GitWork & add hello.xml
git checkout -b GitWork
echo "<note><to>Branch User</to></note>" > hello.xml
git add hello.xml
git commit -m "Add hello.xml on GitWork branch"

# 2. Switch to master & add conflicting hello.xml
git checkout master
echo "<note><to>Master Admin</to></note>" > hello.xml
git add hello.xml
git commit -m "Add hello.xml on master branch"

# 3. View log graph
git log --oneline --graph --decorate --all

# 4. Attempt merge (will fail with conflict)
echo "Attempting git merge GitWork..."
set +e
git merge GitWork
set -e

echo "Conflict detected in hello.xml."

# 5. Resolve conflict
cat << 'EOF' > hello.xml
<note>
  <to>Master Admin and Branch User</to>
</note>
EOF

git add hello.xml
git commit -m "Resolve merge conflict in hello.xml"

# 6. Add backup files to .gitignore
echo "*.orig" >> .gitignore
git add .gitignore
git commit -m "Add *.orig to .gitignore"

# 7. Delete merged branch
git branch -d GitWork
echo "Log after merge resolution:"
git log --oneline --graph --decorate

echo "=== Git-HOL-4 Completed Successfully ==="
