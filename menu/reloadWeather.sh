#!/usr/bin/env bash

CURRENT_DIR_MENU="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo 0 > "$CURRENT_DIR_MENU/../scripts/firstStartup.txt"
#tmux display-popup -T " Celia " -w 30 -h 4 "echo 'Weather reloaded'"
