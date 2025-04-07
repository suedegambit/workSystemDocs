## Automatable Actions

- Create Inbox capture directory  
```sh
mkdir -p ~/workspace/OutBrain/Inbox
```

- Create `OutBrain/Inbox/README.md`  
```markdown
# Inbox Capture Convention

## Purpose
This folder holds raw, timestamped notes and thoughts captured quickly for later triage.

## File Naming
Use `YYYY-MM-DD.md` for daily captures.

## Entry Format
Each entry should be separated by `---` and optionally include metadata:
```markdown
---
time: 2025-04-07T23:42
tags: [idea, gtd, triage]
summary: thought about log/inbox duality
---
I think my inbox should feel like a whiteboard or journal—lightweight but reviewable.

Maybe frontmatter for tags but no structure required beyond separator.
```

- Create inbox capture stub  
```text
~/workspace/OutBrain/Inbox/2025-04-07.md
```
```markdown
---
time: 2025-04-07T23:42
tags: [meta, logging, thought-capture]
---
It's not about whether it's structured enough *yet*, it's whether I'll return to it *at all*.

Priority for the capture layer is **low friction**, **high triage-ability**.
```

- Create section in `SystemDocs/workflow.md` outlining Inbox → Review → Dispatch  
```markdown
## Inbox Flow

- Captures enter `OutBrain/Inbox/YYYY-MM-DD.md`
- Entries may include timestamp + tags + freeform content
- During processing, entries can:
  - Be filed into GTD `Projects/` or `NextActions.md`
  - Be transformed into OutBrain memos
  - Trigger agentic action
  - Be archived

Capture is fast. Review is thoughtful. Filing is structured.
```

- Create `Summaries/turns-081-090.md`  
```markdown
# Turns 081–090 Summary

Major milestone:
- Finalized and documented automation design principles
- Established Inbox flow as core to working memory system
- Affirmed logging as observability layer distinct from Git

Companion automation tasks in `turns-081-090.automation.md`
``` 