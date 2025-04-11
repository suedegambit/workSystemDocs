# Cursor Project Rules for SystemDocs

## Role
This repo documents the design, development, and implementation of Evan's agentic workspace system.

## Responsibilities
- Maintain accurate turn-based chat summaries (potentially processing source files with `|||`).
- Implement automation described in `automate.*.md` files (interpreting `|||` blocks and converting them to ``` in target files).
- Help generate clean `README.md`, `workflow.md`, and `principles.md`.
- Structure and link research in `SystemDocs/Research/`.
- Help organize internal project directories (`Summaries`, `creationChatlogs`, `auth.md`, etc.).

## Folder Purposes
- `Summaries/`: 10-turn summaries of ChatGPT interactions.
- `creationChatlogs/`: Automatable actions and human tasks from each batch (these files will contain the `|||` convention).
- `Research/`: Deep dives into tools and approaches like Cursor, agentic stacks.
- `workflow.md`: Describes how GTD, OutBrain, Tooling, and Logs interact.
- `principles.md`: Design constraints and philosophical commitments.

## Style
- Write for *your future self and other agents*.
- Use semantic headings and bullet lists.
- Be aware that input instructions (especially from `creationChatlogs/`) use `|||` for code blocks; process these according to the global rules (interpret as ```, convert to ``` on output).

## Examples of Valid Contributions
- Creating `Summaries/turns-071-080.md`.
- Implementing `SystemDocs/WorkspaceOps.md` to track ops tasks based on instructions from `creationChatlogs/automate.*.md`.
- Converting ad-hoc ideas into formal markdown conventions.

## Standard Conventions

*   **Task Tracking:** New tasks identified or agreed upon should be added to the `./projectTasks/backlog.md` file using the standard checklist format and tags (`#prio/...`, `#type/...`).
*   **Logging:** Scripts should adhere to the standard workspace logging convention defined in `WorkspaceOps.md`.
*   **File Overwrite Protection:** Always check if files exist before creating/modifying, as per `system-rules.md`.

## Workflow / Conventions

*   **Git Commits:** After completing a logical unit of work, propose appropriate `git add` and `git commit -m 'type(scope): Descriptive message'` commands. Aim for small, focused commits. USER approval is required before execution.
*   **`cursorrules.md` Mirror:** This file mirrors the `.cursor/rules/systemdocs-project-rules.mdc` content, with additional standard conventions appended. 