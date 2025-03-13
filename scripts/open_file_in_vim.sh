#!/bin/bash
# Check that an argument was passed
if [ -z "$1" ]; then
  echo "Usage: $0 filename[:line]" >&2
  exit 1
fi
input="$1"

# This regex captures the file name as group 1, and optionally a colon and a line number.
# Note: Bash regex doesn't support \s, so we use [[:space:]] and we prevent colon with [:].
regex='^[[:space:]@:]*?([^[:space:]:@]+)(:([0-9]+))?$'

if [[ $input =~ $regex ]]; then
    file="${BASH_REMATCH[1]}"
    line="${BASH_REMATCH[3]:-0}"
    vim +${line} "${file}"
else
    echo "Input does not match the expected format: filename:line" >&2
    exit 1
fi
