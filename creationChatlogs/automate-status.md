# Automatable Actions Status

## Turns 1-10
- [x] Create `~/workspace/GTD/inbox.md`
- [x] Create `~/workspace/SystemDocs/WorkspaceOps.md`
- [x] Create `~/workspace/SystemDocs/Principles.md`
- [x] Create `~/workspace/GTD/Projects/ai-finance-talk.md`

## Turns 11-20
- [x] Create empty README stubs in all cloned workspace folders
- [x] Add `.gitignore` to exclude `logs/` directory
- [x] Create `~/workspace/logs/.keep`
- [x] Create Git config snippet for repo remotes
- [x] Create `~/workspace/Agents/README.md`

## Turns 21-30
- [x] Create `~/workspace/SystemDocs/Capture.md`
- [x] Create `~/workspace/SystemDocs/README.md`
- [x] Add `.gitkeep` to `~/workspace/logs/`

## Turns 31-40
- [x] Create README for `workGTD`
- [x] Create README for `workTooling`
- [x] Create README for `workOutBrain`
- [x] Create README for `workSystemDocs`

## Turns 41-50
- [x] Create `gst-all` script
- [x] Add documentation of `gst-all` to `WorkspaceOps.md`
- [x] Scaffold AI talk project entry

## Turns 51-60
- [x] Write `SystemDocs/Principles.md`
- [x] Update `gst-all.sh` with logging
- [x] Add `.zshrc` alias for `gst-all`

## Turns 61-70
- [x] Add `gst-all` log convention to `WorkspaceOps.md`
- [x] Create logging script scaffold

## Turns 71-80
- [x] Add visual placeholder to `SystemDocs/structure.md`
- [x] Create file for system principles
- [x] Append `gst-all` logging alias
- [x] Create `Summaries/turns-071-080.md`

## Turns 81-90
- [x] Create Inbox capture directory
- [x] Create `OutBrain/Inbox/README.md`
- [x] Create inbox capture stub
- [x] Create section in `workflow.md`
- [x] Create `Summaries/turns-081-090.md`

## Turns 91-100
- [x] Create `README.md` for `workGTD`
- [x] Create `README.md` for `workTooling`
- [x] Create `README.md` for `workOutBrain`
- [x] Create `README.md` for `workSystemDocs`
- [x] Create `.workspace.yml`
- [x] Create `Summaries/turns-091-100.md` 

## Optional Enhancements Backlog
*Added: 2025-04-07 14:30*

### Tooling
1. **`ws-tail` alias**  
   - Purpose: View last 10 lines of matching files in workspace (complement to `ws-head`)
   - Tags: `#Tooling`, `#logging`, `#observability`
   - Rationale: Enhances log inspection and automation monitoring

2. **`ws-grep <pattern>` utility**  
   - Purpose: Search `*.md`, `*.sh`, `*.yml` across workspace
   - Tags: `#Tooling`, `#search`
   - Rationale: Enables frictionless pattern recall in logs and notes

3. **`Tooling/bootstrap.sh` script**  
   - Purpose: New-machine bootstrapper with dry-run mode
   - Tags: `#Tooling`, `#bootstrap`, `#devops`
   - Rationale: Streamlines workspace setup across devices

### SystemDocs
4. **`SystemDocs/glossary.md`**  
   - Purpose: Canonical definitions for system terms
   - Tags: `#SystemDocs`, `#semantics`, `#agent-ready`
   - Rationale: Ensures shared semantic understanding between humans and agents

5. **`.meta.yml` per repo**  
   - Purpose: Declares high-level metadata for agent scanning
   - Tags: `#agent-ready`, `#SystemDocs`, `#metadata`
   - Rationale: Enables better agent understanding of repository context

6. **`SystemDocs/questions.md`**  
   - Purpose: Aggregate "Questions Needing Answering" across summaries
   - Tags: `#SystemDocs`, `#open-questions`
   - Rationale: Creates a live, revisitable list of open questions for agent processing

- ## To Be Documented

- [ ] Agent commit policy and context boundaries  
- [ ] Prompt engineering reuse strategies  
- [ ] Sync strategy for non-Git data (logs, checkpoints, GPT outputs)  
- [ ] OutBrain → GTD reference flow (how ideas become actions)  
- [ ] OutBrain citation/metadata standards (e.g., quote origins)  
- [ ] Backup and restore process across devices  
- [ ] Encryption/credential workflow (with 1Password CLI)  