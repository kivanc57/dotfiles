#!/bin/bash

while true; do
  # Stop and reset hyprpaper
  hyprctl hyprpaper unload all
  killall hyprpaper 2>/dev/null

  path_hyperpaper="$HOME/.config/hypr/hyprpaper.conf"

  # Write base config
  {
    echo "splash = false"
    echo "ipc = true"
  } > "$path_hyperpaper"

  # Pick a random wallpaper
  path_wallpaper=$(fd ".png|.jpg|.jpeg|.webp" "$HOME/.config/backgrounds" | shuf -n1)

  # Get monitor names
  monitors=$(hyprctl monitors -j | jq -r '.[].name')

  # Add wallpapers for each monitor
  echo "preload = $path_wallpaper" >> "$path_hyperpaper"
  for monitor in $monitors; do
    echo "wallpaper = $monitor,$path_wallpaper" >> "$path_hyperpaper"
  done

  # Create lockscreen background config
  cat <<EOF > "$HOME/.config/hypr/conf/lock-background.conf"
# BACKGROUND
background {
    monitor =
    blur_passes = 2
    contrast = 1
    brightness = 0.5
    vibrancy = 0.2
    vibrancy_darkness = 0.2
    path = $path_wallpaper   # supports png, jpg, webp (no animations, though)
}
EOF

  # Restart hyprpaper
  hyprpaper &

  # Wait 10 minutes before cycling again
  sleep 10m
done

