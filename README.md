# Formbricks Cube configuration image

Packages the upstream Formbricks analytics configuration with its official
Cube image, so deployment does not require host bind mounts.

The configuration comes from Formbricks **6.2.2**, under its AGPL-3.0 license:
https://github.com/formbricks/formbricks/tree/6.2.2/docker/cube

The base image is pinned to the multi-architecture digest for
`ghcr.io/formbricks/cube:1.8.8-3`. It preserves the upstream non-root user,
Node entrypoint, health interface and supported architectures. No credentials
are included; supply runtime settings through your deployment platform.

Build:

    docker build -t formbricks-cube .

This repository only packages Cube's configuration. Formbricks also needs its
web application, PostgreSQL with pgvector, Redis/Valkey, SpiceDB, Hub, workers,
and their ordered database migrations. This is not a complete stack by itself.
