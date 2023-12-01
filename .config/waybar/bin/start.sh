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

while true; do
	# Start waybar
	setsid waybar &>/dev/null &
	waybar_pid=$!

	# Wait for waybar to exit
	wait $waybar_pid

	# Check exit status
	exit_status=$?
	if [ $exit_status -ne 0 ]; then
		# waybar crashed, restart it
		notify "waybar crashed, restarting..."
	else
		# waybar closed normally, don't restart
		break
	fi

	# Optional: sleep for a bit before restarting waybar to avoid rapid restart loops
	sleep 5
done
