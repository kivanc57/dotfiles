#!/bin/bash

echo "=== Maintenance Cron Job Started ==="

checkupdates && yay -Syu --noconfirm

orphans=$(pacman -Qdtq)
if [[ -n "$orphans" ]]; then
    sudo pacman -Rns --noconfirm $orphans
else
    echo "No orphaned packages found."
fi

sudo paccache -rk1

command -v trash-empty &>/dev/null && trash-empty 30 -f || echo "trash-empty not found."

echo "Listing dotfiles older than 180 days:"
find ~ -type f -name ".*" -mtime +180

echo "=== Maintenance Cron Job Finished ==="

