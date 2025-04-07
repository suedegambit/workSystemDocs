## Automatable Actions

- Add `gst-all` log convention to `WorkspaceOps.md`  
```markdown
### Git Status Logging

For preserving snapshot state of uncommitted changes:

```sh
gst-all > ~/workspace/logs/git-status-$(date +%F).txt
```

This can be useful for:
- Comparing workspace state before/after large changes
- Preserving context before shutdown
- Future agentic analysis of incomplete work
```

- Create logging script scaffold for daily git status snapshot  
```text
~/workspace/Tooling/scripts/log-git-status.sh
```
```sh
#!/bin/bash
LOGDIR=~/workspace/logs
mkdir -p "$LOGDIR"
~/workspace/Tooling/scripts/gst-all.sh > "$LOGDIR/git-status-$(date +%F).txt"
echo "✅ Logged workspace Git status to $LOGDIR"
``` 