#!/bin/bash

for i in {1..99}; do
  if ! tmux has-session -t "ghostty-$i" 2>/dev/null; then
    tmux new-session -A -s "ghostty-$i"
    break
  fi
done

# Fallback: use a timestamp
SESSION_NAME="ghostty-$(date +%s)"
tmux new-session -s "$SESSION_NAME"
