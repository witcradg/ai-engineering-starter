# AI Engineering Starter — System Overview

## Purpose

Provide a portable control system for AI-assisted engineering that ensures:

- work is grounded in explicit project context
- plans are executable from current repo state
- implementation respects architecture and boundaries
- verification is explicit and meaningful
- systems evolve without drift or decay

------

## Core Model

### Control System Layers (behavior)

- **AGENTS.md** → how to operate (context loading, planning, verification expectations)
- **AGENT_RULES.md** → constraints (what must not be violated)
- **docs/starter/** → reusable system guidance (workflow, verification, injection model)

### Project Truth (content)

- **docs/project/** → source of truth for the specific project:
  - PROJECT_OVERVIEW.md
  - STACK.md
  - ARCHITECTURE.md
  - BOUNDARIES.md

### Execution

- **docs/work-loops/** → track real work (plan → execute → verify → capture)

------

## Workflow (default)

All non-trivial work follows:

1. **Understand** — clarify task
2. **Context** — load docs/project/* (source of truth)
3. **Plan** — include:
   - guidance context
   - **execution readiness**
   - verification plan
4. **Implement** — small, boundary-respecting changes
5. **Verify** — explicit checks (not assumed)
6. **Capture** — update docs and/or work loop

------

## Key Principles

### 1. Docs-first, no assumptions

- Do not infer architecture or stack
- If missing, update `docs/project/*` first

### 2. Execution readiness

- Plans must be runnable from current repo state
- If prerequisites are missing (scaffold, install, config), sequence them first

### 3. Explicit verification

- Always state:
  - what was verified
  - how it was verified
  - which checks were applied

### 4. Stack drives scaffold

- `STACK.md` must support:
  - framework + runtime + package manager
  - **scaffold decisions (e.g., src vs root)**
  - defaults vs deferred decisions

### 5. Separation of concerns

- starter docs → system behavior
- project docs → system truth
- do not mix them

### 6. Controlled evolution

- do not spread legacy patterns
- prefer small changes toward documented boundaries
- document transitional states explicitly

------

## Verification Model

Use reusable checks (select as needed):

- Functional — does it work?
- Regression — did anything break?
- Boundary — respects architecture?
- Documentation — still accurate?
- Simplicity — minimal solution?
- **Execution Readiness** — can this step run?
- UI Consistency — repetition / drift / change cost

------

## Repo Creation Model

### Correct flow

1. Use this repo as a **GitHub template**
2. Create new project repository
3. Clone the new repository locally

### Project initialization

- remove `meta/`
- fill `docs/project/*`
- update `README.md`
- begin workflow

### Important distinction

- **Template** → creates new repo (no history)
- **Clone** → pulls repo locally

------

## What This System Prevents

- assumption-driven development
- non-executable plans
- silent regressions
- architectural drift
- legacy pattern spread
- repo cross-contamination (git mistakes)

------

## Summary

```text
Explicit docs
→ grounded planning
→ executable sequencing
→ verified implementation
→ controlled system evolution
```

This system ensures AI-assisted development remains:

- predictable
- explainable
- maintainable
- scalable across projects

```

```