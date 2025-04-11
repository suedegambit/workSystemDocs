# System Structure

This document defines the layout, purpose, and conventions of the `~/workspace/` directory and its subcomponents.

## Top-Level Repositories

### `~/workspace/GTD/`
- Active projects, next actions, weekly reviews
- Includes:  
  - `inbox.md` – Unprocessed thought capture  
  - `NextActions.md` *(placeholder – TBD)*  
  - `Projects/` – One folder or file per active initiative
    - May optionally contain a `research/` subdirectory for project-specific research (see `Capture.md`).

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
  - `modules/` – Contains documentation defining standards for creating workspace modules (e.g., `creating_modules.md`).
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

## Standard README.md Structure (Sub-Projects)

All sub-project repositories (`GTD`, `Tooling`, `InfraCore`, `MCP`, `OutBrain`, `Agents`, etc.) should include a `README.md` with at least the following sections:

1.  **`# ProjectName`**: Top-level heading with the repository name (e.g., `# workGTD`, `# InfraCore`).
2.  **`## Purpose / Overview`**: A brief (1-3 sentence) description of the project's role within the workspace.
3.  **`## Structure`**: Outline of the key directories and files within *this* repository and their purpose.
4.  **`## Getting Started / Setup`**: Basic instructions for cloning, installing dependencies, or initial configuration needed to use the project.
5.  **`## Workspace Context`**: **(Required)** A standard section explicitly linking back to the central documentation and principles:
    ```markdown
    ## Workspace Context

    This project operates as a component of the larger agentic system defined in the parent `~/workspace/SystemDocs` repository. Refer to the parent workspace documentation (`~/workspace/SystemDocs/README.md`, `~/workspace/SystemDocs/Principles.md`, `~/workspace/SystemDocs/workflow.md`) for overall system goals, principles, and coordination protocols. Changes within this project that impact the broader system should be documented and potentially proposed within the parent `~/workspace/SystemDocs` project first.
    ```
6.  **(Optional) `## Project-Specific Principles`**: If applicable, list principles specific to this project's domain that complement the core workspace principles.
7.  **(Optional) `## Usage Examples`**: Key examples of how to use the project's scripts or tools.

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

*(Initial thoughts: Agents should primarily read context, propose changes via standard mechanisms like patches or adding tasks to backlogs, and log actions clearly using the standard logging convention. Direct file modification or commits should require explicit approval initially.)*

## Processing Patterns (Planned)

These are repeatable workflows that structure the flow of information across the workspace:

### Inbox Triage
- Sweep `GTD/inbox.md` and `OutBrain/Inbox/`
- Categorize into: GTD Action, GTD Project, OutBrain Ref, Archive
*(Process: Likely a manual or semi-automated review process initially, potentially aided by an agent suggesting categorization based on tags/content.)*

### Log Snapshotting
- Run `ws-head` or `gst-all` before shutdown or session exit
- Commit any meaningful state to Git
- Write log summary if changes occurred
*(Process: Could be added to shell exit hooks or run manually. Essential for adhering to "No Idle Exit" principle.)*

### LLM Conversation Lifecycle
- Capture interaction → `creationChatlogs/`
- Generate turn summary + automatable actions
- Actions routed to relevant repo for implementation or review
*(Process: Primarily handled by interaction tools like Cursor/SpecStory, output stored centrally in SystemDocs.)*

## To Be Documented

These topics are required for full observability, replication, and scaling of the system:

- Agent commit policy and context boundaries *(Relates to Agent Flow)*
- Prompt engineering reuse strategies *(Likely managed within OutBrain)*
- Sync strategy for non-Git data (logs, checkpoints, GPT outputs) *(Crucial for multi-device use and backups; needs dedicated thought - Unraid, Syncthing, cloud?)*
- OutBrain → GTD reference flow (how ideas become actions) *(Part of Inbox Triage and knowledge management)*
- OutBrain citation/metadata standards (e.g., quote origins) *(Needs definition for PKM consistency)*
- Backup and restore process across devices *(Essential system-level operation)*
- Encryption/credential workflow (with 1Password CLI) *(Security critical; possibly documented in `setup.md`)*

### `~/workspace/OutBrain/`
- Externalized thinking, speculative writing, prompts, research notes
- `