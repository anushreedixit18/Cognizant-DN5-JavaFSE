# Git Hands-on Lab 3: Branching and Merging

## Objectives
- Create branch `GitNewBranch`.
- List local and remote branches (`git branch -a`).
- Switch branch, make changes, commit.
- Diff branches (`git diff master..GitNewBranch`).
- Merge `GitNewBranch` into master.
- Log graph inspection (`git log --oneline --graph --decorate`).
- Delete merged branch (`git branch -d GitNewBranch`).

## Commands Executed
```bash
# Branch creation and checkout
git branch GitNewBranch
git checkout GitNewBranch

# Commit changes on branch
echo "Feature content" > feature.txt
git add feature.txt
git commit -m "Add feature.txt in GitNewBranch"

# Merge and Diff
git checkout master
git diff master..GitNewBranch
git merge GitNewBranch

# Log Graph & Cleanup
git log --oneline --graph --decorate
git branch -d GitNewBranch
```
