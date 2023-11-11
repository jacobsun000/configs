#!/bin/bash

# Ensure there are two arguments
if [ "$#" -le 1 ]; then
	echo "Usage: $0 [monitor_number] [up|down|1-100]"
	exit 1
fi

# Get monitor number and direction or brightness value from arguments
MONITOR_NUM=$1
PARAMETER=$2

# If the second parameter is a numeric value between 1 and 100
if [[ "$PARAMETER" =~ ^[0-9]+$ ]] && [ "$PARAMETER" -ge 0 ] && [ "$PARAMETER" -le 100 ]; then
	echo "Setting brightness to $PARAMETER%..."
	exec ddcutil --display=$MONITOR_NUM setvcp 10 $PARAMETER
	exit 0
fi

# If we're here, it means the second parameter wasn't a direct brightness value
# We'll adjust brightness based on the "up" or "down" direction
DDC_OUTPUT=$(ddcutil --display=$MONITOR_NUM getvcp 10)
CURRENT_BRIGHTNESS=$(echo "$DDC_OUTPUT" | grep -oP 'current value =\s+\K[0-9]+')

if [ -z "$CURRENT_BRIGHTNESS" ]; then
	echo "Failed to get current brightness."
	exit 1
fi

# If no second argument, just print current brightness
if [ "$#" -eq 1 ]; then
	echo "$CURRENT_BRIGHTNESS%"
	exit 0
fi

# Adjust brightness
if [ "$PARAMETER" == "up" ]; then
	NEW_BRIGHTNESS=$((CURRENT_BRIGHTNESS + 5))
	[ $NEW_BRIGHTNESS -gt 100 ] && NEW_BRIGHTNESS=100
elif [ "$PARAMETER" == "down" ]; then
	NEW_BRIGHTNESS=$((CURRENT_BRIGHTNESS - 5))
	[ $NEW_BRIGHTNESS -lt 0 ] && NEW_BRIGHTNESS=0
else
	echo "Invalid parameter. Use up, down, or a value between 1-100."
	exit 1
fi

# Inform the user before setting the new brightness
echo "Adjusting brightness to $NEW_BRIGHTNESS%..."

# Use exec to replace the current process with ddcutil
exec ddcutil --display=$MONITOR_NUM setvcp 10 $NEW_BRIGHTNESS
