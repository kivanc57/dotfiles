#!/usr/bin/env bash
set -euo pipefail

WALL_DIR="$HOME/.config/backgrounds"
LOCK_CONF="$HOME/.config/hypr/conf/lock-background.conf"

while true; do
  path_wallpaper="$(fd -t f -e png -e jpg -e jpeg -e webp . "$WALL_DIR" | shuf -n1 || true)"

  if [[ -z "${path_wallpaper:-}" ]]; then
    echo "No wallpapers found in: $WALL_DIR" >&2
    sleep 10m
    continue
  fi

  # Get monitor names and set each explicitly (works even if fallback/wildcard is ignored)
  while IFS= read -r mon; do
    # Try the modern/standard dispatcher first
    if ! hyprctl hyprpaper wallpaper "$mon,$path_wallpaper" >/dev/null 2>&1; then
      # Fallback to reload semantics (older docs / versions)
      hyprctl hyprpaper reload "$mon,$path_wallpaper" >/dev/null 2>&1 || true
    fi
  done < <(hyprctl monitors -j | jq -r '.[].name')

  # Update lockscreen background config (used next time you lock)
  cat > "$LOCK_CONF" <<EOF
# BACKGROUND
background {
    monitor =
    blur_passes = 2
    contrast = 1
    brightness = 0.5
    vibrancy = 0.2
    vibrancy_darkness = 0.2
    path = $path_wallpaper
}
EOF

  sleep 10m
done

