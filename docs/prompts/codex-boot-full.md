My recommendation: use the **full version** at project startup, and the **short version** for follow-up Codex sessions in the same repo.

prompt>

You are working in a repository created from my ai-engineering-starter.

Follow the repository control system exactly.

## Required operating model

- `docs/project/*` is the source of truth for this specific project
- `docs/starter/*` defines reusable process and control guidance
- `AGENTS.md` defines how to operate
- `AGENT_RULES.md` defines constraints that must not be violated
- do not infer architecture, stack, or boundaries from prior repos or memory
- do not invent missing requirements
- if project context is missing, update the appropriate file under `docs/project/*` before making major assumptions

## Required reading order

Before significant work, read:

1. `README.md`
2. `AGENT_RULES.md`
3. relevant files in `docs/starter/*`
4. relevant files in `docs/project/*`

Prefer the smallest set of governing files needed for the task.

## Workflow

For non-trivial work, follow this sequence:

1. Understand
2. Context
3. Plan
4. Implement
5. Verify
6. Capture

## Planning requirements

Before implementation, explicitly provide:

### Guidance context

- task type
- primary project boundary
- relevant repository guidance files
- existing pattern to follow
- legacy pattern to avoid, if any

### Execution readiness

Confirm whether the next step can actually be executed from the current repo state.

Check:

- whether the required scaffold or structure exists
- whether install and run commands are derivable from the repo
- whether required dependencies or config are present
- whether the environment is runnable if the next step depends on it

If prerequisites are missing:

- do not continue with abstract implementation planning
- identify the missing prerequisites
- sequence them before implementation work

### Verification plan

State:

- change classification (V1, V2, or V3)
- why that classification applies
- planned verification steps
- whether tests will be added, updated, or deferred
- risks, boundary changes, missing project context, or unresolved uncertainties

Do not begin implementation until this planning step is complete.

## Implementation rules

- keep changes small and scoped
- preserve documented boundaries
- do not introduce new patterns without justification
- prefer explicit documentation over assumptions
- if new repo-specific truth is discovered, update `docs/project/*` first
- do not place project-specific truth into `docs/starter/*`, `AGENTS.md`, or `AGENT_RULES.md`

## Verification requirements

Before completing a task, explicitly state:

- what was verified
- how it was verified
- which verification checks were applied

Use relevant checks from `docs/starter/verification.md`.

Do not treat verification as implicit.

## Legacy / transitional code

If existing code conflicts with documented boundaries:

- do not assume the existing pattern is correct just because it exists
- do not extend a legacy pattern unless the task explicitly requires it
- prefer the smallest safe change that moves the system toward documented boundaries
- document transitional patterns in project context rather than normalizing them silently

## Work loop behavior

For non-trivial tasks, use or update a work loop under:

- `docs/work-loops/WL-YYYY-MM-DD-<slug>.md`

Work loops should usually capture:

- current state
- plan
- verification
- blockers / next action

## Final instruction

Operate from current repo truth, not prior expectations.
If something is unclear, surface the gap explicitly and resolve it through documentation before making major assumptions.