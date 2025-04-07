## Summary
- User requests a review of the chat so far to extract **next actions**, **deferred projects**, and structure-related metadata.
- Proposes descriptions for each of the primary `~/workspace/` directories: `GTD`, `Tooling`, `OutBrain`, `Agents`, and `SystemDocs`.
- Begins testing repo cloning via SSH; only `workSystemDocs` initially succeeds.
- User identifies that their `.ssh/config` setup needed adjustment to properly differentiate personal vs work identities.
- Decides on alias-based access using `github-suedegambit` and creates a new personal SSH key (`id_ed25519_suedegambit`) specifically for that.
- SSH key added to GitHub, and all four repos are successfully cloned using host aliasing.

## Questions Needing Answering
- What's the right long-term convention for syncing logs and OutBrain data between machines?
- Should `Agents/` include binaries/venvs or just state/config?

## Questions Answered
- Yes, different SSH keys can be routed via host aliases in `.ssh/config`
- `IdentityFile` combined with `Host` aliasing is effective for GitHub repo routing
- Workspace repos can all be cloned under a consistent alias (`github-suedegambit`) once the key is registered

## Decisions Made
- Use `workNAME` for all workspace repo names
- Directory structure should always include:
  - `GTD`: structured productivity
  - `Tooling`: environment config
  - `OutBrain`: PKM, prompts
  - `Agents`: running components
  - `SystemDocs`: documentation
- Repos should contain at least a stub README

## Human Action Items
- Populate each `README.md` file in workspace dirs with repo purpose
- Add initial commits and pushes to any local repos that were cloned
- Review cloned repo configs to ensure `.ssh/config` routes are correct 