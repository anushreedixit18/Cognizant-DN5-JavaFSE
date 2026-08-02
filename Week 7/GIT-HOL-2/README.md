# Git Hands-on Lab 2: Git Ignore Rules

## Objectives
- Ignore unwanted files and directories using `.gitignore`.
- Verify `git status` ignores `.log` files and `log/` folder.

## Commands Executed
```bash
# Create unwanted logs and folder
echo "Debug log data" > debug.log
mkdir log
echo "Server error log" > log/server.log

# Create .gitignore
echo "*.log" > .gitignore
echo "log/" >> .gitignore

# Verify status
git status
git add .gitignore
git commit -m "Add .gitignore to ignore log files and folders"
```
