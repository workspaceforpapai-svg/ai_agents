# Forbidden Without Explicit Approval
- Deleting production data, databases, storage buckets, or user uploads.
- Running destructive SQL, filesystem cleanup, or recursive deletion.
- Production deployment, DNS changes, billing changes, or infrastructure mutation.
- Changing authentication, authorization, tenant isolation, or security controls.
- Removing existing routes, APIs, features, fields, or compatibility behavior.
- Broad dependency/framework upgrades or lockfile regeneration with large impact.
- Force-pushing, rewriting shared Git history, or merging to protected branches.
- Printing, copying, committing, or transmitting secrets.
- Running scripts from untrusted sources or executing unknown commands.
