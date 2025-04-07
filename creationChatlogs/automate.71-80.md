## Automatable Actions

- Add visual placeholder to `SystemDocs/structure.md` for later system diagram  
```text
~/workspace/SystemDocs/structure.md
```
```markdown
## System Architecture Diagram

(Insert visual here — diagram to explain flow between GTD, Logs, OutBrain, Agents, and SystemDocs.)

- GTD handles action flow
- Logs capture machine/system activity
- OutBrain stores structured knowledge
- Agents use everything, create new data
- SystemDocs explains everything
```

- Create file for system principles  
```text
~/workspace/SystemDocs/principles.md
```
```markdown
# System Principles

## 1. No Idle Exit Without Action
Before stepping away, leave behind a trace:
- a commit
- a log
- an agent action
- or a status capture

## 2. Rate-Limited Automation by Default
Until a system is mature, all processes must:
- provide checkpoints or dry-runs
- avoid full autonomy without human review
- log decisions or actions taken
```

- Append `gst-all` logging alias to `.zshrc`  
```sh
echo "alias gst-log='gst-all > ~/workspace/logs/git-status-$(date +%F).txt'" >> ~/.zshrc
source ~/.zshrc
```

- Create `Summaries/turns-071-080.md`  
```text
~/workspace/SystemDocs/Summaries/turns-071-080.md
```
```markdown
# Turns 071–080 Summary

- Reinforced system principle: always act, log, or delegate before leaving machine.
- Finalized dual principles: action-before-idle and rate-limited agentic automation.
- Confirmed continuation of structured summarization with automatable blocks.
- Prepared for downstream tooling integration via `SystemDocs`.

See companion file: `turns-071-080.automation.md`
``` 