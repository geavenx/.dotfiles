#!/bin/sh

# Get Volume
get_volume() {
	status=`pamixer --get-volume-human`
    if [[ "$status" == "muted" ]]; then
        dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:volume "Volume muted"
    else
        dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:volume "$status"
    fi
    echo "$status"

}

# Increase Volume
inc_volume() {
	pamixer -i 5
	volume=`pamixer --get-volume-human`
    dunstify -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:volume \
    -h int:value:"$volume" "Volume: ${volume}"
}

# Decrease Volume
dec_volume() {
	pamixer -d 5
	volume=`pamixer --get-volume-human`
    dunstify -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:volume \
    -h int:value:"$volume" "Volume: ${volume}"
}

# Toggle Mute
toggle_mute() {
	pamixer -t
	status=`pamixer --get-volume-human`
    if [[ "$status" == "muted" ]]; then
        dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:volume "Volume muted"
    else
        dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:volume "$status"
    fi
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
