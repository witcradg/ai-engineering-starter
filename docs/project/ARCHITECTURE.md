# Architecture

## Purpose

This repository defines a portable AI engineering control system.

It provides structure, rules, and workflow guidance for building software with AI in a controlled, verifiable, and repeatable way.

---

## High-Level Structure

The system is organized into layered guidance:

### 1. Startup / Orientation Layer

- `AGENTS.md`

Defines:
- how agents begin work
- reading order
- how to interpret repository guidance

---

### 2. Behavioral Enforcement Layer

- `AGENT_RULES.md`

Defines:
- non-negotiable rules
- constraint enforcement
- decision hierarchy

This layer overrides task-level instructions when conflicts arise.

---

### 3. Process / System Layer

- `docs/starter/*`

Defines:
- workflow (plan → execute → verify)
- verification model (V1/V2/V3)
- spec-driven execution approach

This layer explains how work is performed, not what the project is.

---

### 4. Constraint Layer

- `docs/constraints/*`

Defines:
- reusable engineering rules
- pattern-level constraints (e.g., React effects)
- implementation guardrails

These are enforceable through `AGENT_RULES.md`.

---

### 5. Project Truth Layer

- `docs/project/*`

Defines:
- architecture
- boundaries
- stack
- project purpose

This layer is the authoritative source of truth for any specific repo created from this starter.

---

### 6. Meta Layer

- `meta/`

Contains:
- starter development artifacts
- design and iteration history

Not used as implementation guidance for projects.

---

## System Characteristics

This architecture enforces:

- documentation as the source of truth
- separation between process and project reality
- explicit boundaries between layers
- constraint-driven implementation
- verification before completion

---

## Design Principles

- Do not infer architecture from starter documents
- Do not encode project truth in process documents
- Keep constraints modular and reusable
- Prefer explicit documentation over implicit patterns
- Maintain clear separation between layers

---

## Intended Use

This repository is intended to be:

- cloned as a starting point for new projects
- extended with project-specific documentation
- used with AI agents operating under defined constraints

Downstream projects must:

- define their own `docs/project/*`
- inherit and respect control system rules
- extend constraints where appropriate
