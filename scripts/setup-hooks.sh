#!/usr/bin/env bash

set -euo pipefail

git config core.hooksPath .githooks
printf '%s\n' "Git hooks path set to .githooks"
