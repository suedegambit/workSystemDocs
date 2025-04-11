# Workspace Alignment Prompt Template (V2)

**Goal:** Align a specific sub-project (e.g., `InfraCore`, `GTD`) with the latest standards, conventions, and documentation defined in the central `~/workspace/SystemDocs` repository.

**Context:**
This project operates as a component within a larger agentic workspace system, coordinated by `SystemDocs`. We have recently updated several core standards and documentation files within `SystemDocs`.

**Instructions for AI Assistant:**

1.  **Assume Target Project:** You are operating within the context of the target sub-project (e.g., `InfraCore`).
2.  **Review Central Documentation:** Reference the following key documents in the parent workspace (`~/workspace/SystemDocs`):
    *   `README.md` (Overall system purpose)
    *   `Principles.md` (Core system principles)
    *   `structure.md` (Workspace layout, standard README structure)
    *   `workflow.md` (Core workflows)
    *   `WorkspaceOps.md` (Standard operations, **logging convention**, vendor mgmt, **commit workflow**, etc.)
    *   `projectTasks/README.md` (Standard task tracking system)
    *   `system-rules.md` (Core rules including overwrite protection, `ws-head`)
    *   **(If created)** Standard `.cursorrules` template or documentation section in `SystemDocs`.
    *   `(Optional)` `modules/creating_modules.md` (If relevant to this project's structure)
3.  **Analyze Current Project:** Examine the current state of *this* project repository, focusing on:
    *   `README.md`: Existence, adherence to standard structure, presence of "Workspace Context" section.
    *   `projectTasks/` directory: Existence and standard file contents (`README.md`, `backlog.md`, etc.).
    *   **`cursorrules.md` / `.cursorrules`:** **(Critical)** 
        - Existence: Does the repository have a `cursorrules.md` file mirroring the `.cursor/rules/` settings?
        - Standard sections: Do they include the standard commit workflow and logging convention rules?
        - Mirroring statement: Is there a note that `cursorrules.md` mirrors the actual rules for AI review?
    *   Directory Structure: Alignment with its `README.md` and workspace standards.
    *   Logging: Adherence to standard logging convention documented in `WorkspaceOps.md`.
    *   Vendor Management: Adherence to standard pattern from `WorkspaceOps.md`.
    *   Commit History (brief check): Does recent history suggest adherence to small, focused commits?
    *   Other Conventions: Any other deviations.
4.  **Identify Gaps:** List specific discrepancies found.
5.  **Propose Actions:** Create a list of tasks (as markdown checklist items `- [ ] #tag... Description`) suitable for adding to *this project's* `projectTasks/backlog.md` to address the identified gaps. Examples:
    *   "Create `projectTasks/` directory and standard files."
    *   "Update `README.md` to include standard sections (Purpose, Structure, Workspace Context)."
    *   "Add standard Commit Workflow and Logging Convention rules to `cursorrules.md` (or `.cursorrules`)."
    *   "Refactor script X to use standard logging convention."

**Example User Invocation:**

```
@InfraCore

Please use the Workspace Alignment Prompt Template (V2) to review this project against the central SystemDocs standards (including commit/logging rules) and propose tasks for alignment.
```

**Output Format:**
Return a response containing:
1.  A summary of the review findings (identified gaps).
2.  A list of markdown checklist tasks ready to be added to the target project's backlog. 