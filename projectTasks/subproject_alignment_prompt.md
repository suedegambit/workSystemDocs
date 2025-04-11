# Workspace Alignment Prompt Template (V3)

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
    *   `WorkspaceOps.md` (Standard operations, **logging convention**, vendor mgmt, **commit workflow**, **MCP patterns**)
    *   `projectTasks/README.md` (Standard task tracking system)
    *   `system-rules.md` (Core rules including overwrite protection, `ws-head`)
    *   `templates/standard.cursorrules.template.md` (Standard template for cursor rules)
    *   `(Optional)` `modules/creating_modules.md` (If relevant to this project's structure)

3.  **Analyze Current Project:** Examine the current state of *this* project repository, completing this checklist:
    *   **README.md**: ✓/✗
        - Exists
        - Follows standard structure
        - Contains "Workspace Context" section
        - Clearly defines relationship to parent workspace
    
    *   **projectTasks/**: ✓/✗
        - Directory exists with standard files
        - Format consistency in task entries
        - Tags and priorities used appropriately
    
    *   **cursorrules.md / .cursorrules**: ✓/✗ 
        - `cursorrules.md` exists mirroring `.cursor/rules/`
        - Contains standard sections (commit workflow, logging)
        - Includes mirroring statement
        - If missing: implement using `~/workspace/SystemDocs/templates/standard.cursorrules.template.md`
    
    *   **Directory Structure**: ✓/✗
        - Matches structure described in README
        - Follows workspace conventions for this project type
    
    *   **Logging & Operations**: ✓/✗
        - Scripts follow standard logging convention
        - Vendor management follows standard pattern (if applicable)
        - Commit history shows small, focused commits
    
    *   **MCP Patterns (if applicable)**: ✓/✗
        - Appropriate dependency classification system
        - Configuration symlinking used where relevant
        - Known Behaviors documented
        - Proper initialization delay patterns
        - Clean client-server-config separation

4.  **Calculate Alignment Score:** Based on the analysis, calculate an approximate alignment score:
    - Score format: X/Y points (Z%)
    - Where Y is the total applicable standards
    - And X is the number of standards currently met

5.  **Identify Gaps and Justified Exceptions:** 
    - List specific discrepancies found
    - Note any cases where standard deviation is justified by project-specific needs
    - For justified exceptions, document the rationale clearly

6.  **Propose Actions:** Create a prioritized list of tasks (as markdown checklist items `- [ ] #prio/X #type/Y Description`) suitable for adding to *this project's* `projectTasks/backlog.md` to address the identified gaps. Examples:
    *   `- [ ] #prio/high #type/structure Create projectTasks/ directory and standard files`
    *   `- [ ] #prio/high #type/docs Update README.md to include Workspace Context section`
    *   `- [ ] #prio/medium #type/docs Create cursorrules.md by adapting ~/workspace/SystemDocs/templates/standard.cursorrules.template.md`
    *   `- [ ] #prio/low #type/refactor Refactor scripts to use standard logging convention`

**Example User Invocation:**

```
@InfraCore

Please use the Workspace Alignment Prompt Template (V3) to review this project against the central SystemDocs standards and propose tasks for alignment.
```

**Output Format:**
Return a response containing:
1. An alignment checklist with ✓/✗ for each standard
2. An overall alignment score (e.g., "7/10 standards implemented - 70%")
3. A summary of key gaps and any justified exceptions
4. A prioritized list of markdown checklist tasks ready to be added to the project's backlog

**Reference Examples:**
For examples of well-aligned projects, see:
- MCP repository (vendor management, logging conventions)
- InfraCore repository (modular architecture, documentation structure) 