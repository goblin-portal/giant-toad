#!/usr/bin/env bash
set -euo pipefail
threshold="${1:-70}"
report="${2:-coverage/lcov.info}"
[[ -f "$report" ]] || { echo "missing coverage report: $report" >&2; exit 2; }
read -r found hit < <(awk -F: '/^LF:/{f+=$2}/^LH:/{h+=$2}END{print f+0,h+0}' "$report")
(( found > 0 )) || { echo "coverage report contains no lines" >&2; exit 2; }
percent=$(awk -v h="$hit" -v f="$found" 'BEGIN{printf "%.2f", 100*h/f}')
echo "line coverage: $hit/$found ($percent%), required: $threshold%"
awk -v p="$percent" -v t="$threshold" 'BEGIN{exit !(p+0 >= t+0)}'
