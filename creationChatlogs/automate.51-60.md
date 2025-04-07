## Automatable Actions

- Write `SystemDocs/Principles.md` defining foundational agentic norms  
```markdown
# System Principles

## 1. No Idle Exit Without Action
Never leave the machine without attending to, kicking off, or logging an automated process.

## 2. Rate-Limited Implementation
All early-stage automation must include deliberate pacing (rate limits, buffer windows, checkpoints) to ensure processes remain human-observable and debuggable.

## Design Implications
- Avoid opaque background tasks
- Require checkpoint logs or manual confirmation in early-stage tools
- Prefer `--dry-run`, `--verbose`, and `--confirm` flags
```

- Update `gst-all.sh` to accept `--log` and write status to timestamped file  
```sh
#!/bin/bash
TIMESTAMP=$(date +%F)
LOGFILE=~/workspace/logs/git-status-$TIMESTAMP.txt

for d in ~/workspace/*/; do
  if [ -d "$d/.git" ]; then
    echo "🔍 $d" | tee -a "$LOGFILE"
    (cd "$d" && git status) | tee -a "$LOGFILE"
    echo "" | tee -a "$LOGFILE"
  fi
done
echo "📝 Saved to $LOGFILE"
```

- Add `.zshrc` alias for `gst-all`  
```sh
echo "alias gst-all='~/workspace/Tooling/scripts/gst-all.sh'" >> ~/.zshrc
source ~/.zshrc
``` 