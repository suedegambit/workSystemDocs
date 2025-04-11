# Standard Workspace Cursor Rules Template

## Purpose

This template provides a baseline set of rules for AI assistants (like Cursor) working within sub-projects of the `~/workspace/` agentic system. Adapt the `[PROJECT_NAME]` and purpose descriptions as needed.

**Note:** If these rules are stored in `.cursorrules`, maintain an identical copy named `cursorrules.md` in the project root to facilitate AI review and suggestion (see `SystemDocs/WorkspaceOps.md`).

## Project Role

This `[PROJECT_NAME]` repository contributes [Specific Purpose, e.g., 'infrastructure management', 'task tracking', 'PKM'] to the overall workspace system defined in `~/workspace/SystemDocs`.

## Key Principles (Reference)

Adhere to the core workspace principles defined in `~/workspace/SystemDocs/Principles.md`:
1.  **No Idle Exit Without Action**
2.  **Rate-Limited Implementation**

## Standard Conventions

*   **Task Tracking:** New tasks identified or agreed upon should be added to the `./projectTasks/backlog.md` file using the standard checklist format and tags (`#prio/...`, `#type/...`).
*   **Logging:** Scripts should adhere to the standard workspace logging convention defined in `~/workspace/SystemDocs/WorkspaceOps.md`, directing logs to `~/workspace/logs/[PROJECT_NAME]/`.
*   **Documentation:** Follow project-specific documentation standards defined within its `README.md` or internal `docs/` directory, and align with overall standards in `SystemDocs`.
*   **File Overwrite Protection:** Always check if files exist before creating/modifying, as per `SystemDocs/system-rules.md`.
*   **Inter-Project Communication:** This project participates in the workspace cross-project communication framework. See `~/workspace/SystemDocs/interop/README.md` for protocols and message formats.

## Workflow / Conventions

*   **Git Commits:** After completing a logical unit of work (e.g., adding a feature, fixing a bug, completing documentation), propose appropriate `git add` and `git commit -m 'type(scope): Descriptive message'` commands. Aim for small, focused commits. Explain the rationale. USER approval is required before execution.
*   **`cursorrules.md` Mirror:** If using `.cursorrules`, maintain the `cursorrules.md` mirror file for AI interaction.
*   **Regular Task Checking:** At natural pause points in the conversation, check the `projectTasks/active.md` and `projectTasks/backlog.md` files to be aware of current priorities and ongoing tasks.

## Project-Specific Rules (Add as needed)

*   *(Example: Define specific file types or libraries relevant to this project)*
*   *(Example: Detail interaction patterns with other specific workspace modules)* 