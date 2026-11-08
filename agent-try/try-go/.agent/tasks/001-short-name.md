---
status: in-progress
---
# 001: Add rate limiting to public API

## Goal
Protect the public endpoints from abuse. Needed before launch.

## Behavior
- Limit each IP to 60 requests/minute on `/api/v1/*`.
- Over the limit: return 429 with a `Retry-After` header.
- Health check endpoint is exempt.

## Acceptance criteria
- [ ] Middleware in `internal/http/middleware/ratelimit.go`
- [ ] Table-driven tests covering under, at, and over the limit
- [ ] Limits configurable via env vars
- [ ] `go test -race ./...` and lint pass

## Constraints
- Use the standard library or `golang.org/x/time/rate`, no new heavy dependencies.
- In-memory is fine for now (single instance).

## Pointers
- Router setup: `internal/http/router.go`
- Config loading: `internal/config/`

## Out of scope
- Redis-backed distributed limiting (later task).