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