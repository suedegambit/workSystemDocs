## Automatable Actions

- Create `gst-all` script inside `~/workspace/Tooling/scripts/`  
```text
~/workspace/Tooling/scripts/gst-all.sh
```
```sh
#!/bin/bash
for d in ~/workspace/*/; do
  if [ -d "$d/.git" ]; then
    echo "🔍 $d"
    (cd "$d" && git status)
    echo ""
  fi
done
```

- Add documentation of `gst-all` to `WorkspaceOps.md`  
```markdown
## Git Workspace Inspection

### `gst-all`: Check all repo statuses
To run a snapshot across all git repos in the workspace:

```sh
~/workspace/Tooling/scripts/gst-all.sh
```

You can alias this for quick access in `.zshrc`:

```sh
alias gst-all='~/workspace/Tooling/scripts/gst-all.sh'
```
```

- Scaffold AI talk project entry in `GTD/Projects/ai-finance-talk.md`  
```markdown
# AI in Finance Talk

## Date: Tuesday [Insert Date]
## Audience: Non-technical, policy & strategy teams

### Structure
- What is AI? (brief)
- What it can/can't do
- Applications in finance
- Real examples (GPT, agents, summarization)

### TODOs
- [ ] Slide draft
- [ ] Demo script (if any)
- [ ] Opening story or metaphor
- [ ] Upload to work laptop
``` 