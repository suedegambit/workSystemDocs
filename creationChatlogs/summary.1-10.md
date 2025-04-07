## Summary

### Turns 1–10

## Summary
- User articulates the need for a local, agentic AI system capable of subprocess spawning and extensibility via MCP.
- Emphasizes importance of structured context retention and actionable outcomes from LLM interactions.
- Identifies the need for a portable, modular workspace layout.
- Introduces the first core principle: *“Never leave the laptop without attending to, kicking off, or logging an automated process.”*
- Begins outlining project folders (`~/workspace/{GTD, Tooling, OutBrain, SystemDocs}`) and hints at using GitHub for state durability.
- User starts cloning repos and testing GitHub SSH config, resolving identity separation via `.ssh/config`.

## questions needing answering
- How can ChatGPT interact with markdown-based GTD stores before full MCP integration?
- Where should persistent context data like vector stores live in the workspace hierarchy?

## questions answered
- Yes, multiple SSH keys can be used by routing via host aliases in `.ssh/config`.
- Logging `git status` is useful for observability, not just committing changes.
- `gst-all` script can help monitor repo state across workspace.

## decisions made
- Use `~/workspace` as the canonical project root
- Name repos with `workNAME` pattern
- Use `~/.ssh/id_ed25519_suedegambit` for personal GitHub access via `github-suedegambit` alias
- Separate work/personal Git identities in `.ssh/config`

## human action items
- Create and push README stubs to `workGTD`, `workTooling`, `workOutBrain`, `workSystemDocs`
- Write initial capture dump into `inbox.md`
- Draft AI in Finance talk outline
- Review and document GTD → SystemDocs conventions