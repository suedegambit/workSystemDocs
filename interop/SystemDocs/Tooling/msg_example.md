# Message: SystemDocs → Tooling

## Request Type
notification

## Priority
low

## Content
This is an example message demonstrating the new cross-project communication framework. The framework has been implemented in `~/workspace/SystemDocs/interop/` with the following components:

1. Standardized message and response formats
2. A registry tracking system at `~/workspace/SystemDocs/interop/registry.md`
3. Templates for messages and responses
4. Directory structure for organized communication

A symlink to the interop directory should appear in your project root soon, allowing direct access to this system. The symlink will be created using the `setup_symlinks.sh` script.

Each project should add the following to their cursor rules:

```
## Inter-Project Communication
This project participates in the workspace cross-project communication framework.
See `~/workspace/SystemDocs/interop/README.md` for protocols and message formats.
```

## Expected Response
no

## References
- `/Users/evanacas/workspace/SystemDocs/interop/README.md`
- `/Users/evanacas/workspace/SystemDocs/interop/message_template.md`
- `/Users/evanacas/workspace/SystemDocs/interop/response_template.md` 