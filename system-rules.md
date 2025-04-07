# System Rules

## Safety Rules

### 1. File Existence Check
*Always check if a file exists before creating or modifying it. Never overwrite existing files without explicit confirmation.*

```sh
# Example safe file creation pattern
if [ ! -f "$TARGET_FILE" ]; then
    # Create new file
else
    echo "⚠️ File already exists: $TARGET_FILE"
    exit 1
fi
```

## Operational Rules

### 1. No Idle Exit
*Never leave the machine without attending to, kicking off, or logging an automated process.*

### 2. Rate-Limited Implementation
*All automation must include deliberate pacing to ensure processes remain human-observable and debuggable.*

### 3. Clear Documentation
*Every automation script must include:
- Purpose and usage
- Input/output expectations
- Error handling
- Rate limiting details*

## Implementation Guidelines

### 1. File Creation Pattern
1. Check if file exists
2. If exists, log warning and exit
3. If not exists, create with proper permissions
4. Log creation event

### 2. File Modification Pattern
1. Check if file exists 
2. Apply changes
3. Log modification event

### 3. Directory Creation Pattern
1. Check if directory exists
2. If exists, verify it's empty
3. If not exists, create with proper permissions
4. Log creation event 