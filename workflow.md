# Workspace Workflow Overview

This document defines the logical flow of information, action, and automation across the workspace system.

---

## Core Components

### GTD (`~/workspace/GTD/`)
- Handles tasks, projects, routines
- Capture → Review → Execute
- Weekly review feeds into automation or triage

### OutBrain (`~/workspace/OutBrain/`)
- Handles persistent knowledge, research, and speculative thinking
- Inbox → Refined Note → Canonical Reference
- Includes talks, long-form drafts, prompts, logs

### Tooling (`~/workspace/Tooling/`)
- Provides system-level automation
- Scripts often write logs or modify other repos

### SystemDocs (`~/workspace/SystemDocs/`)
- Contains system logic, rules, summaries, and documentation
- Automatable actions and memory logs live here

---

## Data Flow Summary

```plaintext
Thought → inbox.md (GTD) → triaged into project/action/ref
→ structured note → potentially converted into automation
→ LLM interaction → summary → SystemDocs/creationChatlogs/
→ OutBrain ↔ GTD ↔ Agent context

## Inbox Flow

- Captures enter `OutBrain/Inbox/YYYY-MM-DD.md`
- Entries may include timestamp + tags + freeform content
- During processing, entries can:
  - Be filed into GTD `Projects/` or `NextActions.md`
  - Be transformed into OutBrain memos
  - Trigger agentic action
  - Be archived

Capture is fast. Review is thoughtful. Filing is structured. 