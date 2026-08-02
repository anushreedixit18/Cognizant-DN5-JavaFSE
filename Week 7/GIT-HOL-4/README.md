# Git Hands-on Lab 4: Merge Conflict Resolution

## Objectives
- Create branch `GitWork` and introduce conflicting file changes in `hello.xml`.
- Perform merge from master and observe conflict markers.
- Resolve conflict using 3-way resolution principles.
- Add backup file patterns (`*.orig`) to `.gitignore`.
- Delete branch `GitWork` after successful merge resolution.

## Commands Executed
```bash
# Branch & Conflict Setup
git checkout -b GitWork
echo "<note><to>Branch User</to></note>" > hello.xml
git add hello.xml && git commit -m "Add hello.xml on branch"

git checkout master
echo "<note><to>Master Admin</to></note>" > hello.xml
git add hello.xml && git commit -m "Add hello.xml on master"

# Conflict & Resolution
git merge GitWork
# Edit hello.xml to resolve conflict
git add hello.xml
git commit -m "Resolve merge conflict in hello.xml"

# Ignore Backup Files & Cleanup
echo "*.orig" >> .gitignore
git add .gitignore && git commit -m "Add *.orig to .gitignore"
git branch -d GitWork
```
