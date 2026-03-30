# Stack

## Purpose

Define the technologies and runtime assumptions for this project.

This file must be specific enough to support:

- reasoning about the system
- scaffold and setup decisions during project initialization

---

## Primary Stack

- Framework:
- Language:
- Runtime (version if relevant):
- Package manager:

---

## Application Type

- application type (e.g. web app, API, worker)
- routing model (if applicable)
- rendering model (if applicable)

---

## Styling / UI

- styling approach (e.g. Tailwind)
- UI component approach (if any)

---

## Initial Scaffold Requirements

The initial scaffold should include:

- package manager setup (`package.json`, lockfile)
- language configuration (e.g. TypeScript)
- framework configuration
- application entry structure
- minimal runnable application

Only include what is required to make the project runnable.

---

## Explicit Defaults

Unless otherwise documented:

- prefer minimal scaffold
- avoid adding infrastructure (database, auth, analytics) during initial setup
- avoid adding non-essential libraries
- follow framework defaults where possible

---

## Deferred Decisions

These are intentionally not part of the initial scaffold unless explicitly required:

- database
- authentication
- hosting platform
- testing framework beyond defaults
- UI component library (e.g. shadcn/ui)
- external integrations

---

## Notes

- Do not assume stack details from prior projects.
- All stack decisions must be explicitly declared here.
- If a decision affects scaffold generation, it must be specified.