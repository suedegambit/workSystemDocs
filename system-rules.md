# System Rules

## Safety Rules

### 1. File Overwrite Protection
*Avoid accidentally overwriting tracked or important files, especially in Git-managed repos. Always check existence first.*

```sh
if [ ! -f "$TARGET_FILE" ]; then
    # safe to create
else
    echo "⚠️ File already exists: $TARGET_FILE"
    exit 1
fi
```

## Operational Rules

### 1. No Idle Exit
*Never leave the machine without attending to, kicking off, or logging an automated process.*

### 2. Rate-Limited Implementation
*All automation must include deliberate pacing to ensure processes remain human-observable and debuggable.*

### 3. Clear Documentation
*Every automation script must include:
- Purpose and usage
- Input/output expectations
- Error handling
- Rate limiting details*

### 4. Lightweight Workspace Diagnostics
*Use the `ws-head` command to quickly inspect file contents across the workspace when higher-level tools are unavailable.*

```sh
alias ws-head='find ~/workspace -type f \( -name "*.md" -o -name "*.yml" -o -name "*.sh" \) | while read file; do echo "===== $file ====="; head -n 10 "$file"; echo; done'
```