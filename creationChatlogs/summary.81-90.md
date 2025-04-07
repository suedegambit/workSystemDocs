## Summary
- User formally declares two guiding principles for all automation:
  1. **No Idle Exit Without Action**
  2. **Rate-Limited Automation by Default**
- Confirms these are to be enshrined in `SystemDocs`.
- Discusses GPT-based logging and metadata capture workflows to support persistent, trustable automation.
- Evaluates the role of logging vs pushing to Git, reaffirming logging as a **reviewable interstitial state** distinct from version control.
- Requests clear tracking of questions: *"Questions needing answering"* and *"Questions answered"*.
- Begins exploring the design for inbox-based capture systems—both typed and freeform— that support contextual triage and processing.
- Envisions a lightweight, expressive capture mechanism for "thoughts worth returning to" that doesn't demand excessive structure up front.

## Questions Needing Answering
- What is the minimal viable structure for "Inbox" entries to support automated triage?
- Should system logs include a trace of agent actions (or at least summaries)?
- Where should metadata (context, intent, tags) be stored—header, frontmatter, filename?

## Questions Answered
- Logging `gst-all` serves a distinct observability/debugging function.
- System principles now guide all development, automation, and agent design.
- Git should not be used as a store for system logs; these belong in `~/workspace/logs/`, optionally sync'd to cloud or NAS.

## Decisions Made
- Logs ≠ commits. Git for state-tracked repos; logs are orthogonal observability.
- "Inbox" will become a first-class workspace mechanism (possibly in `OutBrain/Inbox/`).
- Automatable actions should feed into GPT-readable structured files with timestamps.

## Human Action Items
- Draft `OutBrain/Inbox/README.md` explaining minimal inbox format and triage conventions.
- Start capturing any end-of-session stray thoughts into `Inbox/YYYY-MM-DD.md`
- Extend `SystemDocs` to include explanation of Inbox > Processing > Filing > Agent trigger flow. 