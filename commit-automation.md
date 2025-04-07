# Commit Automation Guidelines

## Principles

### 1. No Idle Exit Without Commit
- Every workspace session should end with at least one commit
- Commits should be meaningful but don't need to be perfect
- Use `gst-all` before leaving to check for uncommitted changes

### 2. Rate-Limited Commit Automation
- Automated commits should be human-reviewable
- Commit messages should be descriptive and machine-parseable
- Changes should be grouped logically, not just by time

## Implementation

### 1. Pre-Commit Hooks
Add to each repo's `.git/hooks/pre-commit`:
```sh
#!/bin/sh
# Ensure commit messages follow format
if ! grep -q "^(feat|fix|docs|style|refactor|test|chore): " "$1"; then
    echo "Commit message must follow format: type(scope): description"
    echo "Types: feat, fix, docs, style, refactor, test, chore"
    exit 1
fi
```

### 2. Auto-Commit Script
Create `Tooling/scripts/auto-commit.sh`:
```sh
#!/bin/bash
# Auto-commit script for workspace repos
REPO=$1
MESSAGE=$2

if [ -z "$REPO" ] || [ -z "$MESSAGE" ]; then
    echo "Usage: auto-commit.sh <repo> <message>"
    exit 1
fi

cd ~/workspace/$REPO
if [ -n "$(git status --porcelain)" ]; then
    git add .
    git commit -m "$MESSAGE"
    echo "✅ Committed changes in $REPO"
else
    echo "No changes to commit in $REPO"
fi
```

### 3. Session End Hook
Add to `~/.zshrc`:
```sh
# Auto-commit on session end
function preexit() {
    if [ -n "$(gst-all | grep 'Changes not staged')" ]; then
        echo "📝 Uncommitted changes detected. Consider committing before exit."
        echo "Run 'auto-commit <repo> <message>' to commit changes."
    fi
}
```

## Usage Examples

1. Manual commit with structured message:
```sh
auto-commit.sh GTD "feat(capture): add inbox processing workflow"
```

2. Automated daily commit:
```sh
# Add to crontab
0 17 * * * ~/workspace/Tooling/scripts/auto-commit.sh GTD "chore(daily): end of day commit"
```

3. Commit before system sleep:
```sh
# Add to sleepwatcher
auto-commit.sh SystemDocs "chore(auto): pre-sleep commit"
```

## Best Practices

1. **Message Format**
   - Use conventional commit format: `type(scope): description`
   - Types: feat, fix, docs, style, refactor, test, chore
   - Scope: optional, e.g., (capture), (logging), (docs)

2. **Frequency**
   - Commit at natural breakpoints
   - Auto-commit at end of day
   - Commit before system sleep
   - Commit before context switches

3. **Review**
   - Review auto-commits daily
   - Use `gst-all` to check commit status
   - Consider squashing related commits

4. **Integration**
   - Link commits to GTD tasks when possible
   - Use commit messages to track progress
   - Consider commit frequency in productivity metrics 