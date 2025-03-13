#!/bin/bash
# Check that an argument was passed
if [ -z "$1" ]; then
  echo "Usage: $0 SERVER-XXXXX" >&2
  exit 1
fi

xdg-open "https://jira.mongodb.org/browse/${1}"
