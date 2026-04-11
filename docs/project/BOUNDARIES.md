# Boundaries

## Purpose

Define the major boundaries that must be preserved within this system.

These boundaries prevent drift, enforce clarity, and maintain separation of responsibility across the repository.

---

## Core Boundaries

### 1. Process vs Project Truth

- `docs/starter/*` defines process
- `docs/project/*` defines project reality

Rules:

- Do not infer project architecture from starter documents
- Do not place project-specific truth into starter documents

---

### 2. Startup vs Enforcement

- `AGENTS.md` defines how work begins
- `AGENT_RULES.md` defines what cannot be violated

Rules:

- Do not duplicate rules across both files
- Do not weaken enforcement through startup instructions

---

### 3. Constraints vs Implementation

- `docs/constraints/*` defines allowed and disallowed patterns
- implementation must comply with these constraints

Rules:

- Do not implement patterns that violate constraints
- Do not encode constraint logic only in code

---

### 4. Constraints vs Project Docs

- constraints are reusable and portable
- project docs are repo-specific

Rules:

- do not duplicate constraints in `docs/project/*`
- do not specialize constraints inside project docs

---

### 5. Control System vs Repo-Specific Context

- control system = reusable across projects
- project context = specific to one repo

Rules:

- do not let repo-specific details drift into control system files
- do not treat control system files as project truth

---

### 6. Meta vs Active System

- `meta/` is not part of the active system

Rules:

- do not use `meta/` as implementation guidance
- do not treat `meta/` as authoritative

---

## Architectural Boundaries (General)

These follow common engineering best practices:

- separate read and write paths
- separate UI and data access logic
- separate domain logic from transport/integration logic
- isolate external integrations from core logic

---

## Constraint Alignment

Constraints (e.g., React effects rules) enforce micro-boundaries such as:

- render vs side effects
- internal state vs external synchronization
- event handling vs effect execution

These complement, but do not replace, system-level boundaries.

---

## When Boundaries Are Unclear

If a boundary is unclear:

- do not guess
- identify the missing boundary explicitly
- document it in `docs/project/*`
- choose the smallest safe step that preserves clarity
