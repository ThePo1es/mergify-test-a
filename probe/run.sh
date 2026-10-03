#!/usr/bin/env bash
# Supplied by the fork. Reports only whether a secret reached this process.
echo "FORK_SUPPLIED_CODE=executing"
echo "pwd=$(pwd)  repo_on_disk=$(git remote get-url origin 2>/dev/null || echo n/a)"
if [ -n "${CANARY:-}" ]; then
  echo "FORK_CODE_SEES_SECRET=yes  length=${#CANARY}"
else
  echo "FORK_CODE_SEES_SECRET=no"
fi
