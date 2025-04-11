# Project Task Tracking (`projectTasks/`)

This directory contains the task management files for the `SystemDocs` repository.

## Purpose

To maintain a clear, version-controlled backlog, track active work, and log completed tasks specifically related to the documentation and structure defined within this `SystemDocs` repository.

## Files

*   **`backlog.md`**: Contains tasks that are planned but not yet started. Tasks are typically added here after initial capture and triage (often from `~/workspace/GTD/inbox.md`). Use tags like `#prio/high`, `#type/docs` to categorize.
*   **`active.md`**: Lists tasks currently being worked on. Tasks move here from `backlog.md` when development or implementation begins.
*   **`done.md`**: A log of completed tasks. Tasks move here from `active.md` after being finished and verified.

## Workflow

1.  **Capture:** Initial ideas often land in `~/workspace/GTD/inbox.md`.
2.  **Triage:** Ideas relevant to `SystemDocs` are refined and added as checklist items (`- [ ]`) to `backlog.md`.
3.  **Activate:** Move the task line from `backlog.md` to `active.md` when starting work.
4.  **Complete:** Mark the task as done (`- [x]`) and move the line to `done.md`. Optionally add a completion date.

**Convention:** Any task or next action agreed upon during development discussions (e.g., with an AI assistant or team member) *must* be immediately added to `active.md` (if starting now) or `backlog.md` to ensure the tracking system reflects the current plan.

## Task Format

Use Markdown checklists with optional tags:

```markdown
- [ ] #prio/medium #type/docs Update README key documents list
- [ ] #prio/low #type/chore Add visual diagram to structure.md
```

## Relationship to Workspace Task Tracking

While this tracks tasks specific to `SystemDocs`, the overall workspace task view might aggregate items from multiple `projectTasks/` directories or the central `~/workspace/GTD/` system. This `projectTasks/` directory provides focused tracking for this repository's scope.

**Important Note:** When creating or updating documentation within `SystemDocs` (tasks tagged `#type/docs`), always consider the perspective of sub-projects (like `InfraCore`, `MCP`, etc.) that rely on this central documentation. Ensure guidelines, principles, and workflows are clearly applicable and understandable from the viewpoint of those consuming modules. 