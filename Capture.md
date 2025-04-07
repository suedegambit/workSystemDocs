# Capture Workflow

## Quick Capture
- Default destination: `~/workspace/GTD/inbox.md`
- Can include brief context comments using `#context` or `@source`

## Processing
- Periodically review inbox
- Promote to `Projects/`, `NextActions.md`, or `OutBrain/` as appropriate

## Topic-Specific Capture & Reference Flow

For structured research (e.g., talks, articles, projects), use a folder structure like:

```
~/workspace/OutBrain/Talks/TOPIC_SLUG/
├── 00_outline.md
├── 01_slide_notes.md
├── 02_prompt_demos.md
├── 03_sources.md
├── 04_takeaway.md
├── inbox/                     # Raw materials to triage
│   └── readme.md              # Triage guidelines
└── ref/                       # Structured extractions
    ├── reports/
    ├── quotes.md
    └── figures.md
```

### Workflow
- Drop raw source files into `inbox/`
- Extract insights, quotes, and figures into `ref/`
- Crosslink relevant sources in `03_sources.md`
- Clear out `inbox/` after processing

## Metadata conventions
- `#urgent`, `#project/slug`, `@device`, `@source:alfred`
- Example:
  - `[2025-04-06 23:18] Need to fix backup script for Unraid. #project/homelab @desktop`a
- `@topic/slug` – link to a specific research folder or topic area (e.g., `@topic/FinanceAI2025`)