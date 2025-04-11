# MCP Alignment Prompt

**Goal:** Verify MCP's alignment with updated workspace standards, and use its advanced patterns to refine those standards.

**Context:**
The MCP repository already implements many of the patterns now standardized in `SystemDocs`. It serves as a reference implementation for practices like vendor management and logging conventions. The goal is to:
1. Ensure full alignment with all current standards
2. Extract any additional patterns from MCP that could be worth standardizing across the workspace

**Instructions for AI Assistant:**

1.  **Review MCP Implementation:** Examine the MCP repository's:
    *   Advanced vendor management system (`manifest.yml`, `sync-vendors.sh`) for any features not yet captured in the standard
    *   Logging convention implementation for any additional best practices
    *   `cursorrules.md` and `.cursorrules` for any workflow guidelines that could benefit other projects
    *   Scripts and documentation for any other patterns that represent improvements on the standards

2.  **Compare with SystemDocs Standards:** Reference the following key documents in the parent workspace:
    *   `WorkspaceOps.md` (Particularly vendor management and logging conventions)
    *   `structure.md` (Workspace layout, standard README structure)
    *   `templates/standard.cursorrules.template.md` (Standard cursor rules)
    *   `projectTasks/README.md` (Task tracking system)

3.  **Validate Current Alignment:**
    *   Verify the MCP repository has all standard components (Workspace Context in README, `projectTasks/`, `cursorrules.md`, etc.)
    *   Confirm all documentation explicitly references the broader workspace system
    *   Ensure all scripts follow the standard logging convention

4.  **Identify Potential Standards from MCP:**
    *   Are there patterns in MCP not yet formalized as workspace standards?
    *   Could any MCP-specific approaches be generalized for other projects?
    *   Does MCP have any tooling that could be moved to the `Tooling` repository for broader use?

**Output Format:**
Return a response containing:
1.  A confirmation of MCP's alignment status
2.  Any recommendations for additional alignment steps
3.  Patterns from MCP that should be considered for standardization across the workspace 