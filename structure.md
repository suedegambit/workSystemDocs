# System Structure

This document defines the layout, purpose, and conventions of the `~/workspace/` directory and its subcomponents.

## Top-Level Repositories

### `~/workspace/GTD/`
- Active projects, next actions, weekly reviews
- Includes:  
  - `inbox.md` – Unprocessed thought capture  
  - `NextActions.md` *(placeholder – TBD)*  
  - `Projects/` – One folder or file per active initiative

### `~/workspace/OutBrain/`
- Externalized thinking, speculative writing, prompts, research notes
- Includes:
  - `Inbox/` – Raw notes and clippings for triage
  - `Talks/` – Presentations and speaking prep (e.g., `Talks/FinanceAI2025/`)
  - `ref/` – Canonical references, structured excerpts
  - `README.md` – Explains usage as PKM layer

### `~/workspace/Tooling/`
- Scripts, aliases, system automation
- Includes:
  - `scripts/` – Shell scripts and small helpers
  - `aliases.zsh` *(placeholder – TBD)*
  - `README.md` – Local install/setup guide

### `~/workspace/SystemDocs/`
- Documentation about the system itself
- Includes:
  - `structure.md` – This file
  - `workflow.md` – Describes data and decision flow (see below)
  - `Principles.md` – Philosophy and core commitments
  - `WorkspaceOps.md` – Manual and automated operations
  - `creationChatlogs/` – LLM summary and automation output
  - `Research/` – Deep dives into tools, methods, LLM integration

### `~/workspace/Agents/` *(planned – placeholder)*
- Long-running autonomous or scheduled agents
- Logging, state files, scheduling policies

---

## File Naming Conventions

- Daily notes or logs: `YYYY-MM-DD.md`
- Tasks: markdown checkboxes (`- [ ]` / `- [x]`)
- Structured docs: numbered prefixes for ordering (e.g., `01_outline.md`, `02_slide_notes.md`)

---

## Git Conventions

- All top-level folders are independent Git repos
- `logs/` is excluded from Git but optionally synced via other means
- `.gitignore` should exclude machine-generated files and ephemeral logs

---

## Open Design Sections
- Agent runtime file layout *(placeholder)*
- Archive strategy and syncing between devices *(placeholder)*
- Credential and key management layout *(placeholder)*

## System Architecture Diagram

(Insert visual here — diagram to explain flow between GTD, Logs, OutBrain, Agents, and SystemDocs.)

- GTD handles action flow
- Logs capture machine/system activity
- OutBrain stores structured knowledge
- Agents use everything, create new data
- SystemDocs explains everything

## Agent Flow (Planned)

This section defines how agents will interact with the workspace filesystem and memory layers.

### Planned Topics
- How agents are invoked (manual, scheduled, triggered)
- How context is loaded: `GTD`, `OutBrain`, `logs/`, `Summaries/`
- Agent logging conventions and replayability
- Conditions for allowing agents to commit or modify files
- How agents report actions and decisions
- Safety constraints (rate limiting, human-in-the-loop checkpoints)

## Processing Patterns (Planned)

These are repeatable workflows that structure the flow of information across the workspace:

### Inbox Triage
- Sweep `GTD/inbox.md` and `OutBrain/Inbox/`
- Categorize into: GTD Action, GTD Project, OutBrain Ref, Archive

### Log Snapshotting
- Run `ws-head` before shutdown or session exit
- Commit any meaningful state to Git
- Write log summary if changes occurred

### LLM Conversation Lifecycle
- Capture interaction → `creationChatlogs/`
- Generate turn summary + automatable actions
- Actions routed to relevant repo for implementation or review

## To Be Documented

These topics are required for full observability, replication, and scaling of the system:

- Agent commit policy and context boundaries
- Prompt engineering reuse strategies
- Sync strategy for non-Git data (logs, checkpoints, GPT outputs)
- OutBrain → GTD reference flow (how ideas become actions)
- OutBrain citation/metadata standards (e.g., quote origins)
- Backup and restore process across devices
- Encryption/credential workflow (with 1Password CLI)