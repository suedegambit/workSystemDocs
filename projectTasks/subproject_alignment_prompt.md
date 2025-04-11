# Workspace Alignment Prompt Template

**Goal:** Align a specific sub-project (e.g., `InfraCore`, `GTD`) with the latest standards and documentation defined in the central `~/workspace/SystemDocs` repository.

**Context:**
This project operates as a component within a larger agentic workspace system, coordinated by `SystemDocs`. We have recently updated several core standards and documentation files within `SystemDocs`.

**Instructions for AI Assistant:**

1.  **Assume Target Project:** You are operating within the context of the target sub-project (e.g., `InfraCore`).
2.  **Review Central Documentation:** Reference the following key documents in the parent workspace (`~/workspace/SystemDocs`):
    *   `README.md` (Overall system purpose)
    *   `Principles.md` (Core system principles)
    *   `structure.md` (Workspace layout, standard README structure)
    *   `workflow.md` (Core workflows)
    *   `WorkspaceOps.md` (Standard operations, logging, vendor mgmt, etc.)
    *   `projectTasks/README.md` (Standard task tracking system)
    *   `(Optional)` `modules/creating_modules.md` (If relevant to this project's structure)
3.  **Analyze Current Project:** Examine the current state of *this* project repository, focusing on:
    *   `README.md`: Existence, adherence to standard structure, presence of "Workspace Context" section.
    *   `projectTasks/` directory: Existence and standard file contents (`README.md`, `backlog.md`, etc.).
    *   Directory Structure: Alignment with its `README.md` and workspace standards.
    *   Logging: Adherence to standard logging convention.
    *   Vendor Management: Adherence to standard pattern.
    *   Other Conventions: Any other deviations.
4.  **Identify Gaps:** List specific discrepancies found.
5.  **Propose Actions:** Create a list of tasks (as markdown checklist items `- [ ] #tag... Description`) suitable for adding to *this project's* `projectTasks/backlog.md` to address the identified gaps.

**Example User Invocation:**

```
@InfraCore

Please use the Workspace Alignment Prompt Template to review this project against the central SystemDocs standards and propose tasks for alignment.
```

**Output Format:**
Return a response containing:
1.  A summary of the review findings (identified gaps).
2.  A list of markdown checklist tasks ready to be added to the target project's backlog. 