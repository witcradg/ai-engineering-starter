# ai-engineering-starter

## Purpose

A starter repository for AI-assisted engineering projects.

This repo provides a portable control system for how work is structured and executed, without embedding project-specific architecture.

---

## Creating a New Project

Do not create a new project by cloning this repository directly.

Use this repository as a GitHub template so the new project starts with:

- the same starter files
- a clean, independent git history
- no linkage to the starter commit history

Recommended flow:

1. Click **"Use this template"** on this repository
2. Create a new repository for your project
3. created from this starter the new project repository locally

---

## Project Initialization

After creating the new repository:

1. Remove the `meta/` directory
2. Define the project by filling in `docs/project/*`
3. Update `README.md` to reflect the new project
4. Begin work using:
   - `AGENTS.md`
   - `AGENT_RULES.md`
   - `docs/starter/*`

---

## Note on Cloning

If a project was created by cloning this repository directly:

- remove the existing `.git` directory
- reinitialize the repository with `git init`
- create a new initial commit

This ensures the project has its own independent history.

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