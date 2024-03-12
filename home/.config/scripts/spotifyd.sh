#!/bin/sh

# Script to launch spotifyd as a daemon using the 'pass' password manager

pass spotify/username > /dev/null # Just to unlock the vault

# Check if daemon is running
systemctl --user is-active --quiet spotifyd.service

resultValue=$?

if [[ "$resultValue" == "0" ]]; then
    systemctl --user restart spotifyd.service
else
    systemctl --user start spotifyd.service
fi

