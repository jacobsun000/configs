#!/usr/bin/env bash

# This script will start or restart waybar and also make sure that waybar is only visible on the primary monitor.

# Terminate already running bar instances
killall -q waybar

check() {
	command -v "$1" >/dev/null 2>&1
}

notify() {
	check notify-send && notify-send "$@" || echo "$@"
}

check hyprctl || {
	notify "hyprctl is not present"
	exit 1
}

monitor="HDMI-A-1"

cat <<EOF >"$HOME"/.config/waybar/config
[
  {
  "output": [ "$monitor" ],
    "include": [
      "~/.config/waybar/bars/top.json",
    ],
  }
]
EOF
setsid waybar &>/dev/null &
