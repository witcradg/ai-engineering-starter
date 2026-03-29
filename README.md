# ai-engineering-starter

## Purpose

A cloneable starter repo for AI-assisted engineering projects.

This repo provides a portable control system for how work is structured and executed, without embedding project-specific architecture.

---

## Usage

1. Clone this repo into a new project
2. Rename the repository
3. Remove the `meta/` directory
4. Define the project by filling in `docs/project/*`
5. Begin work using `AGENTS.md` and `AGENT_RULES.md`

---

## Structure

### Control System

- `AGENTS.md` — AI operating instructions
- `AGENT_RULES.md` — behavioral and anti-drift rules
- `docs/starter/` — portable workflow, verification, and system guidance

### Project Context

- `docs/project/` — source of truth for this specific repo

### Execution

- `docs/work-loops/` — ongoing work tracking

### Meta (remove after cloning)

- `meta/` — starter design and analysis documents

---

## Core Principle

Starter docs define **process**.  
Project docs define **truth**.

---

## Notes

- Do not infer architecture from starter documents
- Add stack-specific `.gitignore` entries after cloning based on your project stack