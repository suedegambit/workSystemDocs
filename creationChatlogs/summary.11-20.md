## Summary
- User confirms that using hosted LLMs is acceptable for high-intelligence tasks, but local models should handle simpler ones.
- Proposes a structured research prompt to evaluate agentic stack components (LLMs, vector DBs, agents, runtimes).
- Refines that prompt iteratively, emphasizing integration, personal use patterns, and system durability.
- Begins defining principles and workspace layout: `~/workspace/{GTD, Tooling, OutBrain, SystemDocs}`.
- Discusses `logs/` as a separate non-committed, machine-generated directory.
- Starts to wire in GitHub SSH identity separation for personal vs work accounts.

## Questions Needing Answering
- Where should long-running agent components (e.g., email assistant) store their working state?
- What's the long-term plan for syncing and processing logs (Unraid, Google Drive, etc)?

## Questions Answered
- `ssh -T git@github.com` uses the default identity unless routed via alias in `.ssh/config`
- Multiple GitHub repos can be configured with different keys via `Host` aliasing
- GitHub permissions issues were resolved by registering the correct SSH key

## Decisions Made
- Separate logs into `~/workspace/logs/` and exclude them from Git tracking
- Use `github-suedegambit` as the alias for personal GitHub identity
- Store agent working files in `~/workspace/Agents/` (tentative)

## Human Action Items
- Push local clones of `workGTD`, `workTooling`, `workOutBrain`, `workSystemDocs`
- Copy public key from `~/.ssh/id_ed25519_suedegambit.pub` into GitHub SSH settings
- Use `gst-all` regularly before suspending work sessions
- Begin drafting project entries into GTD and connecting them to logs and OutBrain 