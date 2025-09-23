#!/bin/bash

echo "=== Maintenance Cron Job Started ==="

# Check for updates and upgrade if needed
updates=$(checkupdates)
if [[ -n "$updates" ]]; then
    echo "Updates available, proceeding to update..."
    yay -Syu --noconfirm
else
    echo "System is already up-to-date."
fi

# Remove orphaned packages
orphans=$(pacman -Qdtq)
if [[ -n "$orphans" ]]; then
    echo "Removing orphaned packages..."
    sudo pacman -Rns --noconfirm $orphans
else
    echo "No orphaned packages found."
fi

# Clean old package cache
echo "Cleaning old package cache..."
sudo paccache -rk1

# Empty trash if tool exists
if command -v trash-empty &>/dev/null; then
    echo "Emptying trash older than 30 days..."
    trash-empty 30 -f
else
    echo "trash-empty not found. Install it with: yay -S trash-cli"
fi

# List dotfiles older than 180 days
echo "Listing dotfiles older than 180 days:"
find ~ -type f -name ".*" -mtime +180

echo "=== Maintenance Cron Job Finished ==="

