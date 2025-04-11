## Workspace Operations

### Git Status Across Modules
To check the state of all Git repos:

```sh
for d in ~/workspace/*/; do
  if [ -d "$d/.git" ]; then
    echo "🌀 $d"
    (cd "$d" && git status)
    echo ""
  fi
done
```

### Directory Conventions
- `GTD/`: projects, next actions, task management
- `Tooling/`: environment configs, aliases, package lists
- `OutBrain/`: personal PKM, prompts, capture processing
- `SystemDocs/`: documentation of this workspace system

### Git Workspace Inspection

#### `gst-all`: Check all repo statuses
To run a snapshot across all git repos in the workspace:

```sh
~/workspace/Tooling/scripts/gst-all.sh
```

You can alias this for quick access in `.zshrc`:

```sh
alias gst-all='~/workspace/Tooling/scripts/gst-all.sh'
```

#### Git Status Logging
For preserving snapshot state of uncommitted changes:

```sh
gst-all > ~/workspace/logs/git-status-$(date +%F).txt
```

This can be useful for:
- Comparing workspace state before/after large changes
- Preserving context before shutdown
- Future agentic analysis of incomplete work

Last updated: 2025-04-07 14:00 

## Standard Git Commit Workflow

To maintain clarity and leverage AI assistance effectively:

1.  **Scope:** Commits should represent a single, logical unit of work (e.g., implementing a feature, fixing a specific bug, completing a documentation section).
2.  **Frequency:** Aim for relatively small, focused commits after each meaningful task completion, rather than large commits encompassing many unrelated changes.
3.  **AI Assistance:** When working with an AI assistant (like Cursor):
    *   After completing the logical unit of work, instruct the AI to propose the necessary `git add` and `git commit` commands.
    *   The AI should formulate a descriptive commit message following conventional commit standards (`type(scope): description`).
4.  **User Review:** **Always review** the files staged by `git add` and the commit message proposed by the AI before approving the command execution.

This workflow promotes a clean Git history and ensures human oversight of AI-suggested changes.

---

## Vendor Management (Standard Pattern)

For managing third-party Git repositories as dependencies (e.g., MCP Servers):

1.  **Structure:** Use a `vendor/` directory within the relevant project (e.g., `MCP/vendor/`).
2.  **Manifest:** Define dependencies in `vendor/manifest.yml` specifying `name`, `url`, `commit` (pinning), and optionally `patch`.
3.  **Patching:** Store local patches in `vendor/patches/`.
4.  **Sync Script:** Use a `vendor/sync-vendors.sh` script (requires `yq`) to clone/update repos, checkout pinned commits, apply patches, and install dependencies (`npm` or `uv`).

*(Example adapted from `MCP` repository)*

---

## Logging Convention (Standard Pattern)

All automation scripts across the workspace should adhere to a standard logging convention:

1.  **Location:** Output logs to a central, non-committed `~/workspace/logs/PROJECT_NAME/` directory (e.g., `~/workspace/logs/MCP/`, `~/workspace/logs/Tooling/`).
2.  **Filename:** `YYYY-MM-DD-HHMMSS-SCRIPT_ID.log` (e.g., `2024-04-11-103000-sync-vendors.log`).
3.  **Content:** Include script start/end times, configuration used, major steps, errors/warnings.

*(Convention adapted from `MCP` repository)*

---

## Bootstrapping Documentation (`toolingLog.md` Pattern)

When making manual system changes (installs, configs) that should eventually be automated or formally documented:

1.  **Log Manually:** Record the change, commands used, purpose, and timestamp in a simple log file, typically `Tooling/toolingLog.md`.
2.  **Process Later:** Periodically review this log to create formal documentation (in `SystemDocs`) or automation scripts (in `Tooling` or other relevant repos).

This provides a lightweight way to capture changes before they are lost.

*(Practice adapted from `Tooling` repository)*

### Git Status Logging
For preserving snapshot state of uncommitted changes:

```sh
gst-all > ~/workspace/logs/git-status-$(date +%F).txt
```

This can be useful for:
- Comparing workspace state before/after large changes
- Preserving context before shutdown
- Future agentic analysis of incomplete work

Last updated: 2025-04-07 14:00 

## `cursorrules.md` Mirroring Convention

To facilitate AI-assisted editing and review of Cursor project rules (`.cursorrules`), which AI assistants often cannot directly modify:

1.  **Create Mirror:** Maintain a standard markdown file named `cursorrules.md` in the project root, mirroring the content of the actual `.cursorrules` file.
2.  **AI Interaction:** Use the `cursorrules.md` file when discussing or requesting changes to project rules with an AI assistant.
3.  **Manual Sync:** After agreeing on changes with the AI, **manually copy** the updated content from `cursorrules.md` into the actual `.cursorrules` file used by the Cursor editor.

This provides a practical workflow for leveraging AI suggestions while respecting tool limitations.

---

## MCP Patterns (Reference Implementations)

The following patterns have been implemented successfully in the MCP repository and are recommended for adoption across the workspace where applicable:

### Server/Dependency Classification System

A three-tiered approach to managing external servers or dependencies:

1. **Standard Third-Party Services**: Installed and run on-demand using package runners (`npx`, `uvx`, `bunx`).
   - *Example:* `npx @anthropic/claude-api@latest <args>`
   - *Advantage:* Always uses latest version, minimal management overhead.

2. **Custom-Developed Components**: Source code managed directly within the repository with local dependency management.
   - *Example:* Custom-built script with its own package.json.
   - *Advantage:* Full control over code and updates.

3. **Patched Vendor Components**: Managed via the vendor system (manifest and sync script) with local patches.
   - *Example:* Third-party code requiring local modifications.
   - *Advantage:* Pulls from upstream but allows local customization.

This pattern provides clear guidelines for when to use different approaches to external code.

### Configuration Symlinking Pattern

For managing configuration files that must exist in specific system locations:

1. **Store Canonical Versions:** Keep versioned configuration files in the repository (e.g., `config/clients/snippets/`).
2. **Create Symlinks:** Symlink from required system locations to the repo versions.
3. **Document Locations:** Maintain a clear registry of which system files are symlinked.

*Example:* 
```bash
# Link from system location to repo
ln -sf ~/workspace/MCP/config/clients/snippets/client_config.json ~/Library/Application\ Support/SomeApp/config.json
```

This pattern enables version control of configs without duplicating or moving files from required locations.

### Known Behaviors Documentation

A structured approach to documenting quirks and workarounds:

1. **Dedicated Section:** Include a "Known Behaviors" or "Known Issues" section in documentation.
2. **Problem-Solution Format:** Format each entry with:
   - Clear description of the behavior/issue
   - Root cause (if known)
   - Workaround or handling strategy
   - Status (active issue, resolved, etc.)

This approach maintains institutional knowledge about external dependencies that may have inconsistent behavior.

### Initialization Delay Pattern

For handling components with asynchronous initialization:

1. **Structured Waiting:** Implement a retry mechanism with exponential backoff.
2. **Clear Timeout:** Set a maximum wait time to avoid indefinite hanging.
3. **Status Checking:** Build in health-check or readiness endpoints.

*Example:*
```bash
# Basic retry with exponential backoff
attempt=1
max_attempts=5
base_wait=2

until service_ready_check || [ $attempt -gt $max_attempts ]; do
    wait_time=$((base_wait ** attempt))
    echo "Service not ready, waiting ${wait_time}s (attempt $attempt/$max_attempts)..."
    sleep $wait_time
    ((attempt++))
done
```

This pattern is useful for any service that requires initialization time before accepting requests.

### Client-Server-Config Separation

A clear separation of concerns in architecture:

1. **Client Code:** Tools for interacting with services (`scripts/utils/`).
2. **Server Management:** Code for starting, monitoring, and configuring servers (`scripts/servers/`).
3. **Configuration:** Separated into templates and active configs (`config/`).

This separation simplifies maintenance and makes it clear which components serve which purpose.