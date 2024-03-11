#!/bin/sh

# Get Volume
get_volume() {
	status=`pamixer --get-volume-human`
	echo "$status"
}

# Increase Volume
inc_volume() {
	pamixer -i 5
}

# Decrease Volume
dec_volume() {
	pamixer -d 5
}

# Toggle Mute
toggle_mute() {
	status=`pamixer -t`
}

# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_volume
elif [[ "$1" == "--inc" ]]; then
	inc_volume
elif [[ "$1" == "--dec" ]]; then
	dec_volume
elif [[ "$1" == "--toggle" ]]; then
	toggle_mute
else
	get_volume
fi
