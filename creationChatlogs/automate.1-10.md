## automatable actions

- Create `~/workspace/GTD/inbox.md` for unstructured brain dumps  
  |||markdown
  # Inbox  
  Anything that needs to leave your head but hasn’t been sorted yet.
  |||

- Create `~/workspace/SystemDocs/WorkspaceOps.md` with gst-all instructions and directory conventions  
  |||markdown
  ## Workspace Operations

  ### Git Status Across Modules
  To check the state of all Git repos:

  |||sh
  for d in ~/workspace/*/; do
    if [ -d "$d/.git" ]; then
      echo "🌀 $d"
      (cd "$d" && git status)
      echo ""
    fi
  done
  |||

  ### Directory Conventions
  - `GTD/`: projects, next actions, task management
  - `Tooling/`: environment configs, aliases, package lists
  - `OutBrain/`: personal PKM, prompts, capture processing
  - `SystemDocs/`: documentation of this workspace system
  |||

- Create `~/workspace/SystemDocs/Principles.md` to record foundational automation values  
  |||markdown
  ## System Principles

  ### 1. No Idle Exit Without Action
  *Never leave the machine without attending to, kicking off, or logging an automated process.*

  ### 2. Rate-Limited Implementation
  *All early-stage automation must include deliberate pacing to ensure processes remain human-observable and debuggable.*
  |||

- Scaffold `~/workspace/GTD/Projects/ai-finance-talk.md` for upcoming presentation  
  |||markdown
  # AI in Finance Talk (Draft)

  ## Title Ideas
  - "When AI Shows Its Work"
  - "Beyond the Black Box"

  ## Structure
  - What AI Is (and Isn’t)
  - Where It’s Useful in Finance
  - How to Be a Power User

  ## Demo Ideas
  - GPT-powered Excel
  - Smart email or summarization agent
  |||