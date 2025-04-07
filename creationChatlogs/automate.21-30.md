## Automatable Actions

- Create `~/workspace/SystemDocs/Capture.md` describing GTD-style capture with context metadata  
```markdown
# Capture Workflow

## Quick Capture
- Default destination: `~/workspace/GTD/inbox.md`
- Can include brief context comments using `#context` or `@source`

## Processing
- Periodically review inbox
- Promote to `Projects/`, `NextActions.md`, or `OutBrain/` as appropriate

## Metadata conventions
- `#urgent`, `#project/slug`, `@device`, `@source:alfred`
- Example:
  - `[2025-04-06 23:18] Need to fix backup script for Unraid. #project/homelab @desktop`
```

- Scaffold inbox file  
```text
~/workspace/GTD/inbox.md
```
```markdown
# Inbox

Anything that needs to leave your head but hasn't been sorted yet.
Use tags like `#urgent`, `#project/xyz`, `@source:alfred` for triage.

---
```

- Create `SystemDocs/README.md` explaining the role of the project  
```markdown
# SystemDocs

This repository documents the principles, conventions, and structure of the personal agentic workspace system.

- Architecture and conventions
- Automation patterns
- Capture workflows
- GTD integration

This project is the source of truth for bootstrapping and understanding the full environment.
```

- Add `.gitkeep` to `~/workspace/logs/` for folder presence (alternative to `.keep`)  
```text
~/workspace/logs/.gitkeep
```
```text
For folder structure integrity only. Do not commit log contents.
``` 