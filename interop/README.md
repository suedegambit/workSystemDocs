# Cross-Project Communication Framework

This directory facilitates structured communication between different projects within the workspace system.

## Purpose

- Standardize message formats between projects
- Maintain clear record of inter-project requests and responses
- Preserve project autonomy while enabling coordination
- Provide transparent, file-based communication audit trail

## Directory Structure

```
interop/
├── README.md              # This file - documentation
├── registry.md            # Active communications registry
└── {source_project}/      # Directories for each source project
    └── {target_project}/  # Target project for communications
        ├── msg_{timestamp}.md      # Outgoing message
        └── response_{timestamp}.md # Response to message
```

## Message Format

All messages should follow this standard format:

```md
# Message: {source} → {target}

## Request Type
[query|action|notification]

## Priority
[high|medium|low]

## Content
{message body}

## Expected Response
[yes|no]

## References
- {links to relevant files}
```

## Response Format

```md
# Response: {target} → {source}

## Original Request
{link to original message}

## Status
[complete|in_progress|declined]

## Response Content
{response body}

## Follow-up Required
[yes|no]
```

## Usage Guidelines

1. **Creating a Message**:
   - Create file in `interop/{your_project}/{target_project}/msg_{YYYY-MM-DD}.md`
   - Follow the standard message format
   - Add entry to `registry.md`

2. **Responding to Messages**:
   - Create response in same directory with `response_` prefix
   - Update status in `registry.md`

3. **Message Types**:
   - **Query**: Request for information
   - **Action**: Request for another project to take action
   - **Notification**: Information sharing, no response needed

4. **Priority Levels**:
   - **High**: Blocking issue, requires attention within 24 hours
   - **Medium**: Important but not blocking, within 72 hours
   - **Low**: Nice to have, no specific timeframe

## Registry

All communications should be recorded in `registry.md` for tracking purposes. Update status as communications progress.

## Cursor System Prompt Reference

Add this brief statement to each project's cursor rules:

```
## Inter-Project Communication
This project participates in the workspace cross-project communication framework.
See `~/workspace/SystemDocs/interop/README.md` for protocols and message formats.
``` 