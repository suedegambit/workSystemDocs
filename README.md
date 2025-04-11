# workSystemDocs: Documentation for the Personal Agentic Workspace

## Purpose

This repository (`workSystemDocs`) is the **canonical source of truth** for the design, architecture, principles, conventions, and operational procedures of the personal agentic workspace system located at `~/workspace`.

Its goals are to:
- Provide a clear understanding of the **system's philosophy and structure**.
- Document **workflows and integrations** between components (`workGTD`, `workTooling`, `workOutBrain`, `workAgents`).
- Define **operational standards** and best practices (e.g., capture, logging, automation).
- Maintain a **historical record** of the system's evolution (via chat summaries and decision logs).
- Serve as an **onboarding guide** for myself (future-you!) and potentially other agents interacting with the system.
- Ensure the **entire workspace system remains maintainable, extensible, and understandable** over time.

## Key Documents within this Repository

*   **`README.md`**: (This file) Top-level overview.
*   **`principles.md`**: Core design principles guiding system development and automation.
*   **`structure.md`** or **`architecture.md`**: (To be created/fleshed out) Detailed explanation of the `~/workspace` layout, repo roles, and data flow. _(Consider adding a diagram)_
*   **`workflow.md`**: (To be created/fleshed out) Describes key operational loops (e.g., GTD capture -> process -> act, Log ingestion -> summary -> insight).
*   **`WorkspaceOps.md`**: (To be created/fleshed out) Details standard commands, scripts (`gst-all`), and maintenance procedures for the workspace.
*   **`auth.md`** or **`setup.md`**: (To be created/fleshed out) Instructions for setting up SSH keys, Git configurations, and potentially bootstrapping the environment on a new machine.
*   **`Capture.md`**: Details on how to use the `GTD/inbox.md` and conventions for capturing thoughts/tasks.
*   **`projectTasks/`**: Task backlog, active work, and completion log specifically for `SystemDocs` development.
*   **`Research/`**: Deep dives and evaluations of tools, technologies, and approaches relevant to the system (e.g., Cursor, Agent Stacks).
*   **`creationChatlogs/`**: Contains the structured summaries (`summary.*.md`) and automatable action lists (`automate.*.md`) generated during the system's design phase via ChatGPT. These serve as the initial bootstrapping instructions.
*   **`.cursor/`**: Configuration rules specific to using the Cursor editor within this `SystemDocs` project itself. _(Note: This directory is symlinked from `~/workspace/.cursor`)_
*   **`.specstory/`**: (Purpose to be defined/documented) Configuration for Specstory tool. _(Note: This directory is symlinked from `~/workspace/.specstory`)_

## How This Repository Relates to Others

`workSystemDocs` documents the *entire* system. The other repositories (`workGTD`, `workTooling`, `workOutBrain`, `workAgents`) contain the *operational* components themselves (tasks, scripts, knowledge notes, agent code/state). This repo provides the map and the manual for how those components work together.

## Contributing / Updating

Updates to the system design, principles, or workflows should be documented here first. Ideas for changes can be captured in `~/workspace/GTD/inbox.md` and tagged appropriately (e.g., `#systemdocs #idea`) for later processing and integration into this repository.

---
_This documentation is intended to be read by humans and interpreted by AI agents assisting in the system's development and maintenance._