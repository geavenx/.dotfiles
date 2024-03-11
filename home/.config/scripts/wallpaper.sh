#!/bin/sh

# Pick random wallpaper
WALLPAPER_DIR="/mnt/hdd/media/wallpapers"
RANDOM_WPP=$(ls $WALLPAPER_DIR/* | shuf -n1)

# Starts swww
swww kill && swww init
swww img $RANDOM_WPP

# Generate colorscheme
wal -c
wal -i $RANDOM_WPP

# Deletes swww cache
rm -rf $HOME/.cache/swww
