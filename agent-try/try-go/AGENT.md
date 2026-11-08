# AGENT.md

> Context for AI coding agents working in this repo. Keep it short and update it when you repeat a correction. Replace everything in `<angle brackets>`.

## 1. Project overview

<Project name> is a <one-line description: what it does and for whom>.

- **Stage:** First launch (pre-release). Expect fast iteration, and breaking changes are acceptable.
- **Goal for v1:** <the one or two outcomes that define "launched">
- **Module path:** `github.com/<you>/<project>`

## 2. Tech stack and structure

- **Language:** Go <1.xx>
- **Key libraries:** <e.g. chi (HTTP router), pgx (Postgres), zerolog (logging), testify (tests)>
- **Data/infra:** <e.g. PostgreSQL, Redis, Docker>

```
.
├── cmd/<app>/        # main package(s), entry points only
├── internal/         # private application code
│   ├── <domain>/     # business logic
│   ├── http/         # handlers, routing, middleware
│   └── store/        # database access
├── pkg/              # reusable packages (only if truly public)
├── migrations/       # SQL migrations
├── scripts/          # dev and CI helper scripts
└── Makefile
```

Adjust the tree to match reality. Delete folders that don't exist yet.

## 3. Commands

| Task | Command |
|------|---------|
| Run locally | `go run ./cmd/<app>` |
| Build | `go build ./...` |
| Test (all) | `go test ./...` |
| Test with race detector | `go test -race ./...` |
| Lint | `golangci-lint run` |
| Format | `gofmt -w .` (or `goimports -w .`) |
| Tidy deps | `go mod tidy` |

Before saying a task is done, run build, test, and lint, and make sure all three pass.

## 4. Conventions and style

- Follow standard Go style (Effective Go, Go Code Review Comments). Code must be `gofmt`-clean.
- Keep packages small and named for what they provide. No `util`, `common`, or `helpers` packages.
- Accept interfaces, return structs. Define interfaces where they are used, not where they are implemented.
- Pass `context.Context` as the first parameter for anything that does I/O.
- Handle every error. Wrap with context: `fmt.Errorf("load user %d: %w", id, err)`. No `panic` outside `main` or init-time setup.
- Use table-driven tests, with test files next to the code (`foo_test.go`).
- Prefer the standard library over a new dependency when the cost is similar.
- Logging: structured logs only, no `fmt.Println` in committed code.

## 5. Rules and gotchas

- **Ask before** adding a new third-party dependency or changing the public API.
- **Never** commit secrets. Config comes from environment variables, with `.env.example` as the reference.
- **Never** edit generated files (<e.g. `*.pb.go`, `*_gen.go`>). Change the source and regenerate.
- Database changes go through a new migration file. Never edit an existing migration.
- Keep changes small and focused. Don't refactor unrelated code in the same change.
- If requirements are unclear, ask instead of guessing.
- <Add project-specific gotchas here, e.g. "The staging DB resets nightly.">

## 6. Current focus

- [ ] <Task or milestone you're on right now>
- [ ] <Next up>

Out of scope for now: <things the agent should not spend time on>.