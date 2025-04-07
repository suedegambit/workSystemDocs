## Workspace Operations

### Git Status Across Modules
To check the state of all Git repos:

```sh
for d in ~/workspace/*/; do
  if [ -d "$d/.git" ]; then
    echo "🌀 $d"
    (cd "$d" && git status)
    echo ""
  fi
done
```

### Directory Conventions
- `GTD/`: projects, next actions, task management
- `Tooling/`: environment configs, aliases, package lists
- `OutBrain/`: personal PKM, prompts, capture processing
- `SystemDocs/`: documentation of this workspace system

### Git Workspace Inspection

#### `gst-all`: Check all repo statuses
To run a snapshot across all git repos in the workspace:

```sh
~/workspace/Tooling/scripts/gst-all.sh
```

You can alias this for quick access in `.zshrc`:

```sh
alias gst-all='~/workspace/Tooling/scripts/gst-all.sh'
```

#### Git Status Logging
For preserving snapshot state of uncommitted changes:

```sh
gst-all > ~/workspace/logs/git-status-$(date +%F).txt
```

This can be useful for:
- Comparing workspace state before/after large changes
- Preserving context before shutdown
- Future agentic analysis of incomplete work

Last updated: 2025-04-07 14:00 