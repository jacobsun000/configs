#!/bin/bash

MONITOR_NUM=2 # Adjust this to your desired monitor number

# Get the current brightness using ddcutil
CURRENT_BRIGHTNESS=$(ddcutil --display=$MONITOR_NUM getvcp 10 | grep -oP 'current value =\s+\K[0-9]+')

# Calculate the index for the icon (assuming max brightness is 100 and there are 15 icons)
ICON_INDEX=$((($CURRENT_BRIGHTNESS + 6) / 7))
ICON_INDEX=$(($ICON_INDEX > 15 ? 15 : $ICON_INDEX)) # Limit to 15

# Extract the corresponding icon
ICON=$(sed "${ICON_INDEX}q;d" <<<'













')

# Print the brightness value with the icon for Waybar
cat <<EOF
{"text":"<span>${ICON} ${CURRENT_BRIGHTNESS}%</span>"}
EOF

# Wait for 1 second before checking again
