#!/usr/bin/env bash

if [[ "${ISSUE_KIND}" != "pr" ]]; then
    echo "[FAIL] This plugin only works with pull requests."
    exit 1
fi

IFS=','

login="${*:-${LOGIN}}"

remove-reviewer.sh "${login}"
