#!/usr/bin/env bash

check() {
	command -v "$1" 1>/dev/null
}

check sensors || exit

data="$(sensors k10temp-pci-00c3 | sed 's/+//g')"
package="$(echo "$data" | awk -F': +' '/Tctl:/ {print $2}')"

tooltip="<b>Core Temp: $package </b>\n"

# "format-icons" : [ "", "", "", "", "" ] ,
tempint=${package%.*}

icon="<span color='#7AA2F7'>$package </span>"
[ "$tempint" -gt 60 ] && icon="<span color='#7aa2f7'>$package </span>"
[ "$tempint" -gt 70 ] && icon="<span color='#a6e3a1'>$package </span>"
[ "$tempint" -gt 85 ] && icon="<span color='#fab387'>$package </span>"
[ "$tempint" -gt 95 ] && icon="<span color='#d78787'>$package </span>"

cat <<EOF
{"text":"$icon"}
EOF
