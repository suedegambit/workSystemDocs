## Consolidated Automatable Actions (Derived from Turns 1-110)

### Workspace Structure & Core Files

- Create `~/workspace/GTD/inbox.md` for unstructured brain dumps
  ```markdown
  # Inbox

  Anything that needs to leave your head but hasn't been sorted yet.
  Use tags like `#urgent`, `#project/xyz`, `@source:alfred` for triage.

  ---
  ```

- Create Inbox capture directory
  ```sh
  mkdir -p ~/workspace/OutBrain/Inbox
  ```

- Create inbox capture stub file
  ```text
  ~/workspace/OutBrain/Inbox/2025-04-07.md
  ```
  ```markdown
  ---
  time: 2025-04-07T23:42
  tags: [meta, logging, thought-capture]
  ---
  It's not about whether it’s structured enough *yet*, it’s whether I’ll return to it *at all*.

  Priority for the capture layer is **low friction**, **high triage-ability**.
  ```

- Create placeholder file for Agents directory
  ```text
  ~/workspace/Agents/README.md
  ```
  ```markdown
  # Agents

  This folder stores persistent state and working files for long-running personal agents:
  - Email assistant
  - Log analyzer
  - MCP-extended tools

  Future: consider structured naming and checkpoint files per agent.
  ```

- Create `.workspace.yml` stub for describing each repo
  ```text
  ~/workspace/.workspace.yml
  ```
  ```yaml
  repos:
    - name: workGTD
      path: GTD
      description: Markdown-based GTD project + action tracking
    - name: workTooling
      path: Tooling
      description: Scripts, aliases, and environment setup
    - name: workOutBrain
      path: OutBrain
      description: PKM and prompt layer
    - name: workSystemDocs
      path: SystemDocs
      description: Documentation of the entire workspace system
  ```

### Logging Configuration

- Add `.gitignore` to exclude `logs/` directory (Apply to root `~/workspace/.gitignore`)
  ```text
  logs/
  ```

- Add `.gitkeep` to `~/workspace/logs/` for folder presence
  ```text
  ~/workspace/logs/.gitkeep
  ```
  ```text
  For folder structure integrity only. Do not commit log contents.
  ```
  *(Note: `.keep` was also mentioned, consolidate on `.gitkeep`)*

### Tooling (`~/workspace/Tooling/`)

- Create `gst-all.sh` script with logging functionality
  ```text
  ~/workspace/Tooling/scripts/gst-all.sh
  ```
  ```sh
  #!/bin/bash
  TIMESTAMP=$(date +%F)
  LOGFILE=~/workspace/logs/git-status-$TIMESTAMP.txt

  echo "🔍 Scanning Git repos under ~/workspace/" | tee -a "$LOGFILE" # Added initial echo
  for d in ~/workspace/*/; do
    if [ -d "$d/.git" ]; then
      echo "📁 $d" | tee -a "$LOGFILE" # Changed echo format slightly
      (cd "$d" && git status) | tee -a "$LOGFILE"
      echo "" | tee -a "$LOGFILE"
    fi
  done
  echo "📝 Saved status snapshot to $LOGFILE" # Changed final echo
  ```
  *(Note: Combined initial creation with update for logging)*

- Make `gst-all.sh` executable
  ```sh
  chmod +x ~/workspace/Tooling/scripts/gst-all.sh
  ```

- Add `gst-all` alias to `.zshrc`
  ```sh
  echo "alias gst-all='~/workspace/Tooling/scripts/gst-all.sh'" >> ~/.zshrc
  source ~/.zshrc
  ```

- Append `gst-log` alias (for `gst-all` logging) to `.zshrc`
  ```sh
  echo "alias gst-log='gst-all > ~/workspace/logs/git-status-$(date +%F).txt'" >> ~/.zshrc
  source ~/.zshrc
  ```
  *(Note: Includes both aliases for gst-all)*

- Create logging script scaffold `log-git-status.sh`
  ```text
  ~/workspace/Tooling/scripts/log-git-status.sh
  ```
  ```sh
  #!/bin/bash
  LOGDIR=~/workspace/logs
  mkdir -p "$LOGDIR"
  # Ensure gst-all script exists and is executable before calling
  GST_ALL_SCRIPT=~/workspace/Tooling/scripts/gst-all.sh
  if [ -x "$GST_ALL_SCRIPT" ]; then
      "$GST_ALL_SCRIPT" # Assumes gst-all now handles its own logging via tee
      echo "✅ Logged workspace Git status (via gst-all tee output)"
  else
      echo "❌ Error: gst-all script not found or not executable at $GST_ALL_SCRIPT"
      exit 1
  fi
  ```
  *(Note: Updated scaffold based on gst-all logging change)*

### Documentation (`~/workspace/SystemDocs/`)

- Create `~/workspace/SystemDocs/Principles.md` defining foundational agentic norms
  ```markdown
  # System Principles

  ## 1. No Idle Exit Without Action
  Before stepping away, leave behind a trace: a commit, a log, an agent action, or a status capture. This ensures momentum, closure, and continuity.

  ## 2. Rate-Limited Automation by Default (Early Stage)
  Until a system is mature, all automation processes must include deliberate pacing (rate limits, human checkpoints, dry runs) to ensure they remain observable, controllable, and debuggable. Log decisions or actions taken.

  ## Design Implications
  - Avoid opaque background tasks.
  - Require checkpoint logs or manual confirmation in early-stage tools.
  - Prefer `--dry-run`, `--verbose`, and `--confirm` flags.
  ```
  *(Note: Combined content from multiple turns)*

- Create `~/workspace/SystemDocs/Capture.md` describing GTD capture conventions
  ```markdown
  # Capture Workflow

  ## Quick Capture (GTD Inbox)
  - Default destination: `~/workspace/GTD/inbox.md`
  - Use for actionable thoughts, tasks, reminders.
  - Can include brief context comments using `#context` or `@source`.

  ## Thought Capture (OutBrain Inbox)
  - Destination: `~/workspace/OutBrain/Inbox/YYYY-MM-DD.md`
  - Use for raw notes, ideas, clippings for later triage.
  - See `OutBrain/Inbox/README.md` for format.

  ## Processing
  - Periodically review both inboxes (`GTD/inbox.md`, `OutBrain/Inbox/`).
  - GTD Inbox items: Promote to `Projects/`, `NextActions.md`, or delegate.
  - OutBrain Inbox items: Transform into `OutBrain/Memos/`, `ref/`, link to projects, or archive.

  ## Metadata Conventions (Apply to both)
  - `#urgent`, `#project/slug`, `@topic/slug`, `@device`, `@source:alfred`
  - Example: `[2025-04-06 23:18] Need to fix backup script for Unraid. #project/homelab @desktop #urgent`

  Capture should be low friction. Review is thoughtful. Filing is structured.
  ```
  *(Note: Merged GTD and OutBrain capture concepts)*

- Create/Update `~/workspace/SystemDocs/WorkspaceOps.md` with operational details
  ```markdown
  # Workspace Operations

  ## Git Workspace Inspection

  ### `gst-all`: Check all repo statuses
  Use the `gst-all` tool to check current working state of all Git repos in the workspace:
  ```sh
  gst-all
  ```
  This script, located at `~/workspace/Tooling/scripts/gst-all.sh`, also logs its output to `~/workspace/logs/git-status-YYYY-MM-DD.txt` via `tee`.
  Add the alias in your `.zshrc` for quick access: `alias gst-all='~/workspace/Tooling/scripts/gst-all.sh'`

  ### Git Status Logging Convention
  The `gst-all` script automatically logs its output. Manual logging via redirection (`gst-all > logfile`) is still possible but less necessary. Log files in `~/workspace/logs/` can be useful for:
  - Comparing workspace state before/after large changes.
  - Preserving context before shutdown.
  - Future agentic analysis of incomplete work.

  ## Directory Conventions
  - `GTD/`: Projects, next actions, task management.
  - `Tooling/`: Environment configs, aliases, package lists, scripts.
  - `OutBrain/`: Personal PKM, prompts, capture processing, research.
  - `SystemDocs/`: Documentation of this workspace system.
  - `Agents/`: (Planned) Persistent state and code for agents.
  - `logs/`: Machine-generated logs (NOT committed to Git).
  ```
  *(Note: Combined multiple updates related to gst-all and conventions)*

- Create/Update `~/workspace/SystemDocs/structure.md` with visual placeholder
  ```markdown
  # System Structure
  *(Existing content...)*

  ## System Architecture Diagram

  (Insert visual here — diagram to explain flow between GTD, Logs, OutBrain, Agents, and SystemDocs.)

  - GTD handles action flow
  - Logs capture machine/system activity
  - OutBrain stores structured knowledge
  - Agents use everything, create new data
  - SystemDocs explains everything

  *(Rest of existing content...)*
  ```

- Create/Update `~/workspace/SystemDocs/workflow.md` outlining Inbox Flow
  ```markdown
  # Workspace Workflow Overview
  *(Existing content...)*

  ## Inbox Flow

  - **GTD Capture**: Quick action items enter `~/workspace/GTD/inbox.md`.
  - **OutBrain Capture**: Raw notes/ideas enter `~/workspace/OutBrain/Inbox/YYYY-MM-DD.md`.
  - **Processing**: During review (daily/weekly):
    - GTD items → `Projects/`, `NextActions.md`, delegate.
    - OutBrain items → `Memos/`, `ref/`, link, archive.
  - Use tags (`#project/slug`, `@topic/slug`, etc.) for context.

  Capture is fast. Review is thoughtful. Filing is structured.
  ```
  *(Note: Clarified distinct inboxes)*

- Create `Summaries/turns-[RANGE].md` files (Actions represent the creation of these files themselves)
  *(Note: These were created during the process, representing meta-actions. We will archive the individual summary files after consolidating)*

### Repository README Files

- Create/Update `~/workspace/GTD/README.md`
  ```markdown
  # workGTD

  This repository contains Evan's active GTD system in Markdown format.

  ## Structure
  - `inbox.md`: Quick capture for unprocessed items.
  - `Projects/`: One folder/file per active project.
  - `NextActions.md`: (Planned) Unified view of next actions.
  - `Routines.md`: (Optional) Recurring responsibilities/checklists.

  Designed to be lightweight, portable, tool-agnostic, and the productivity anchor for personal/project workflows. See `SystemDocs/Capture.md` for conventions.
  ```

- Create/Update `~/workspace/Tooling/README.md`
  ```markdown
  # workTooling

  Shell scripts, aliases, package setups, and general developer tooling for the personal workspace.

  ## Structure
  - `scripts/`: CLI scripts (`gst-all.sh`, `log-git-status.sh`, etc.).
  - `aliases.zsh`: (Planned) ZSH-specific command enhancements.
  - `pkg/`: (Optional) List of brew, pipx, or npm packages.

  Designed to be drop-in on any Mac or UNIX-like system. See `SystemDocs/WorkspaceOps.md` for operational details.
  ```

- Create/Update `~/workspace/OutBrain/README.md`
  ```markdown
  # workOutBrain

  PKM layer of the system. Outboard brain for Evan's long-term knowledge and memory.

  ## Structure
  - `Inbox/`: Raw, time-stamped note captures for triage.
  - `Memos/`: (Planned) Semi-structured processed thoughts.
  - `Prompts/`: (Planned) Libraries and templates for agentic use.
  - `References/` or `ref/`: (Planned) Archived or high-value documents/excerpts.
  - `Talks/`: Example of topic-specific structuring.

  Captures meaning before it's fully structured. Goal: evolve into a searchable, vectorized, agent-queriable knowledge base. See `SystemDocs/Capture.md` and `SystemDocs/workflow.md`.
  ```

- Create/Update `~/workspace/SystemDocs/README.md`
  *(Content previously provided seems comprehensive and mostly up-to-date, incorporating pointers to other key docs)*

### Project Scaffolding

- Scaffold AI talk project entry
  ```text
  ~/workspace/GTD/Projects/ai-finance-talk.md
  ```
  ```markdown
  # AI in Finance Talk

  ## Date: Tuesday [Insert Date Here]
  ## Audience: Non-technical, policy & strategy teams

  ### Structure Outline
  - What is AI? (Analogy/Hook)
  - What it can/can’t do (Focus on practical finance apps)
  - Real examples (e.g., Fraud Detection, Reporting Automation, Personalized Advice)
  - How to engage responsibly (Connect to Gov guidance if relevant)
  - Q&A

  ### TODOs
  - [ ] Finalize core message & narrative arc
  - [ ] Draft slides (visuals focused)
  - [ ] Prepare simple demo concept (e.g., show summarization)
  - [ ] Refine speaker notes
  - [ ] Practice timing (Strict 30 mins)
  - [ ] Upload final presentation
  ```
  *(Note: Updated TODOs based on proximity to Tuesday)*

### Git Configuration

- Create Git config snippet for setting remote URL with alias *(This is more of a template/instruction than a file to create)*
  ```sh
  # Example command to set remote for a repo:
  # git remote set-url origin git@github-suedegambit:suedegambit/REPO_NAME.git
  ```