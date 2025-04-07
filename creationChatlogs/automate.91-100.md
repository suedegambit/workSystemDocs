## Automatable Actions

- Create `README.md` for `workGTD`  
```text
~/workspace/GTD/README.md
```
```markdown
# workGTD

This repository contains Evan's active GTD system in Markdown format.

## Structure
- `Projects/`: One folder per active project
- `NextActions.md`: Unified view of immediate actions
- `Routines.md`: Optional section for recurring responsibilities

Designed to be lightweight, portable, and tool-agnostic.
```

- Create `README.md` for `workTooling`  
```text
~/workspace/Tooling/README.md
```
```markdown
# workTooling

Shell scripts, aliases, package setups, and general developer tooling.

## Structure
- `scripts/`: CLI scripts to bootstrap workspace ops
- `aliases.zsh`: ZSH-specific command enhancements
- `pkg/`: Optional list of brew, pipx, or npm packages to install

Designed to be drop-in on any Mac or UNIX-like system.
```

- Create `README.md` for `workOutBrain`  
```text
~/workspace/OutBrain/README.md
```
```markdown
# workOutBrain

PKM layer of the system. Outboard brain for Evan's long-term knowledge and memory.

## Structure
- `Inbox/`: Raw, time-stamped note captures
- `Memos/`: Semi-structured processed thoughts
- `Prompts/`: Libraries and templates for agentic use
- `References/`: Archived or high-value documents

Captures meaning before it's structured.
```

- Create `README.md` for `workSystemDocs`  
```text
~/workspace/SystemDocs/README.md
```
```markdown
# workSystemDocs

Living documentation for the personal workspace system.

## Structure
- `principles.md`: Design values and constraints
- `workflow.md`: How the pieces connect
- `Summaries/`: Turn-by-turn structured chat summaries
- `auth.md`: SSH/GitHub setup, credentialing conventions
- `WorkspaceOps.md`: Scripts, commands, and repo operations

Goal: make this system forkable, inspectable, and improvable.
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

- Create `Summaries/turns-091-100.md`  
```text
~/workspace/SystemDocs/Summaries/turns-091-100.md
```
```markdown
# Turns 091–100 Summary

✅ Resolved GitHub access issues via SSH config
✅ Cloned all personal `work*` repos
✅ Confirmed naming, documentation, and drop-in goal for workspace

Companion automation: `turns-091-100.automation.md`
``` 