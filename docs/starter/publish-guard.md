# Publish Guard

## Purpose

The local publish guard is a versioned Git `pre-push` hook for repositories created from this starter.

It exists to resurface one basic question before first publish: has this repo reached minimum publish-readiness intent, or has someone made an explicit override?

---

## Default Behavior

The default mode is `warn`.

If none of the configured marker files exist:

- `warn` prints a reminder and allows the push
- `block` prints a blocking message and stops the push

If any configured marker file exists, the hook exits successfully.

Local hooks can always be bypassed with:

```bash
git push --no-verify
```

That bypass exists because this is a local workflow guard, not a remote enforcement system.

---

## Config

The hook reads:

- `starter-config/publish-guard.conf`

Default starter config:

```bash
MODE=warn
MARKERS=".github/workflows/pr-verification.yml docs/project/github-actions-plan.md .repo-ready-for-publish"
```

Accepted marker files are whatever paths are listed in `MARKERS`. The starter defaults are:

- `.github/workflows/pr-verification.yml`
- `docs/project/github-actions-plan.md`
- `.repo-ready-for-publish`

The marker strategy is intentionally simple: if any one marker exists, the guard treats the repo as intentionally ready to push.

---

## Setup

After cloning a repo created from this starter, install the versioned hooks path with either:

```bash
git config core.hooksPath .githooks
```

or:

```bash
./scripts/setup-hooks.sh
```

---

## Switching to Block Mode

Update the config file:

```bash
MODE=block
MARKERS=".github/workflows/pr-verification.yml docs/project/github-actions-plan.md .repo-ready-for-publish"
```

Future cloned repos can tighten the guard by changing `MODE=block` and adjusting the marker list to match their own publish-readiness signals.

---

## Notes

- The implementation is Bash-only and does not depend on package tooling.
- The feature is intended to resurface before first publish, not to define a full release process.
- Keep marker names generic in the starter. Project-specific readiness signals should be customized in the cloned repository.
