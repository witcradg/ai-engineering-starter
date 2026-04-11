# RESUME — AI Engineering System

## Purpose

This document captures the current state of the ai-engineering-system so work can resume quickly and correctly after interruption.

It summarizes:

- what has been implemented
- what decisions have been made
- what remains open
- where to pick up next

---

## Current System State

The repository has evolved from a starter template into a **structured AI control system** with layered guidance and emerging constraint enforcement.

### Established Layers

- **Startup / Orientation**
  - `AGENTS.md`
  - Defines reading order and how to begin work

- **Behavioral Enforcement**
  - `AGENT_RULES.md`
  - Defines non-negotiable rules and authority hierarchy

- **Process / Method**
  - `docs/starter/*`
  - Defines workflow, verification, and spec-driven execution

- **Constraints (New)**
  - `docs/constraints/*`
  - Defines enforceable engineering rules (first example implemented)

- **Project Truth (Template)**
  - `docs/project/*`
  - Intended for downstream repo-specific truth

---

## Key Decisions Made

### 1. Constraints Are First-Class

- Constraints are defined under `docs/constraints/*`
- They are **enforced via `AGENT_RULES.md`**
- They are not duplicated across the system

---

### 2. React Effects Constraint Implemented

- File: `docs/constraints/frontend/react-effects.md`
- Rule: `useEffect` only for external synchronization
- Disallows:
  - derived state in effects
  - event logic in effects
  - internal data flow via effects

---

### 3. Constraint Enforcement Added

- `AGENT_RULES.md` updated with Rule 9
- Constraints are now:
  - non-negotiable
  - required during implementation and review

---

### 4. Constraints Integrated into Startup Flow

- `AGENTS.md` updated to include:

  > Check relevant files under `docs/constraints/*` before introducing new patterns

- Constraints are **loaded on demand**, not front-loaded

---

### 5. Boot Instructions Kept Lean

Decision:
- Do **not** expand Codex startup instructions significantly
- Use layered loading:
  - minimal boot
  - rules in `AGENT_RULES.md`
  - constraints loaded when relevant

---

### 6. No Full Validation System (Yet)

Decision:
- Do not build a generalized validation framework
- Use **agent-level validation** first:
  - list constraints before work
  - validate against them after work

---

### 7. Architecture and Boundaries Documents Created

- `docs/project/ARCHITECTURE.md`
- `docs/project/BOUNDARIES.md`

These define:

- system layers
- separation of responsibility
- relationship between control system and project truth

---

## Open Design Question

### Starter vs Project Truth Separation

Current issue:

- `docs/project/*` exists in the starter repo
- but the starter is not a real project
- downstream repos modify these files with project-specific truth

This creates ambiguity between:

- **template scaffolding**
- **actual project truth**
- **starter system description**

---

### Possible Direction (Not Yet Implemented)

Introduce a new layer:

```
docs/system/
```

To define:

- architecture of the control system itself
- boundaries of the starter
- relationship between layers

Then:

- keep `docs/project/*` as pure templates
- move starter-specific truth out of project docs

---

## Next Steps (When Resuming)

### Step 1 — Compare with a Real Project

- Select a repo created from this starter
- Compare:

  - `PROJECT_OVERVIEW.md`
  - `STACK.md`
  - `ARCHITECTURE.md`
  - `BOUNDARIES.md`

- Classify differences as:

  - template improvements
  - project-specific truth
  - misplaced system-level content

---

### Step 2 — Decide on Structure

Based on comparison:

- either refine `docs/project/*` templates
- or introduce `docs/system/*`
- or both

---

### Step 3 — Validate Constraint System in Practice

Run a real task using:

- constraint listing before implementation
- constraint validation after implementation

Observe:

- friction
- compliance
- missed constraints
- unnecessary overhead

---

### Step 4 — Add Second Constraint

Good candidates:

- server/client boundary discipline
- data access placement
- separation of domain vs transport logic

Keep it:

- structural
- enforceable
- non-vague

---

## Important Principles to Preserve

- Do not duplicate rules across files
- Do not overload startup instructions
- Keep constraints modular and centralized
- Separate:
  - process
  - enforcement
  - constraints
  - project truth
- Prefer system behavior over documentation consistency

---

## One-Line System Summary

This repository defines a **constraint-driven AI engineering system** where:

- documentation defines truth
- rules enforce behavior
- constraints restrict implementation patterns
- AI operates as a controlled executor within those boundaries
