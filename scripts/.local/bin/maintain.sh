#!/bin/bash
echo "=== Maintenance Started ==="

# Clean old package cache
paccache -rk1

# Empty trash if available
if command -v trash-empty &>/dev/null; then
    trash-empty 30 -f
fi

# Report dotfiles older than 180 days
find ~ -type f -name ".*" -mtime +180

echo "=== Maintenance Finished ==="

