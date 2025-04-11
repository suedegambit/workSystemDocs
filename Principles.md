# System Principles

## 1. No Idle Exit Without Action
Never leave the machine without attending to, kicking off, or logging an automated process.

## 2. Rate-Limited Implementation
All early-stage automation must include deliberate pacing (rate limits, buffer windows, checkpoints) to ensure processes remain human-observable and debuggable.

## Design Implications
- Avoid opaque background tasks
- Require checkpoint logs or manual confirmation in early-stage tools
- Prefer `--dry-run`, `--verbose`, and `--confirm` flags 

*(Note: Individual projects, like `InfraCore`, may define additional, more specific principles relevant to their domain, which should complement these core workspace principles.)* 