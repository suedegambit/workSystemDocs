## Summary
- User begins planning conventions for logging and GTD capture using markdown.
- Proposes use of `~/workspace/GTD/inbox.md` for quick, unstructured notes and `~/workspace/logs/` for system/machine-generated logs (non-Git).
- Emphasizes importance of eventual automated log processing and syncing.
- Brings up the challenge of fragmentary or low-context capture: wants to support capture with context metadata.
- Asks for conventions to be documented and codified into the workspace system.
- Suggests `SystemDocs/` should be treated as its own repo (`workSystemDocs`), and this project is that documentation system.
- Distinguishes between human logs and automated logs by their storage location and Git inclusion.

## Questions Needing Answering
- Where should raw vs processed logs go?
- Should agent logs or capture-derived logs get committed after processing?
- What mechanism or sync method should be used for `logs/` (Unraid, Drive, etc.)?

## Questions Answered
- Logs used for tooling and MCPs should go in `~/workspace/logs/` and *not* be committed.
- Documentation of the overall system (this project) should live in `workSystemDocs`.

## Decisions Made
- GTD capture snippets go to `inbox.md`, processed later into system components.
- `logs/` is machine-generated, should never be versioned.
- This project (`workSystemDocs`) is the canonical home of all workspace conventions and architectural documentation.

## Human Action Items
- Define and document capture workflow in `SystemDocs/Capture.md`
- Create structured directory scaffolding: `GTD`, `Tooling`, `OutBrain`, `Agents`, `SystemDocs`, `logs`
- Begin populating each project with `README.md` and appropriate markdown documentation
- Ensure `.gitignore` excludes logs and temporary files 