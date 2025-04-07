## Summary
- User asks for a list of action items and documentation needs across the system.
- Discusses whether `gst-all` logs should be stored or whether only commits/pushes matter.
- Conclusion: logging is useful for observability, debugging, and as a pre-commit review.
- Establishes two foundational system principles:
  1. **No Idle Exit Without Action**
  2. **Rate-Limited Automation for Observability**
- Confirms these should be codified in `SystemDocs/Principles.md` and made enforceable in early-stage automation.

## Questions Needing Answering
- Should we create a daily snapshot log of git status (e.g., cron job)?
- Should agents be allowed to push commits themselves or only stage changes?

## Questions Answered
- Logging git status (e.g., `gst-all > logs/git-status-YYYY-MM-DD.txt`) is useful during system development.
- Automation should remain human-observable by default—rate-limiting is a design norm, not just a debug tool.

## Decisions Made
- `gst-all` output can be logged, but committing those logs is not the goal.
- Two system design principles formally adopted and documented in `SystemDocs`.
- Principle-based design will guide all future system components and tooling.

## Human Action Items
- Write `SystemDocs/Principles.md` with full description of both system principles.
- Add optional `--log` mode to `gst-all` for capturing status snapshots.
- Create or update `.zshrc` to include alias for `gst-all`. 