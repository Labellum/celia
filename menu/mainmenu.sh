#!/usr/bin/env bash

CURRENT_DIR_MENU="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux display-menu -T " Celia Commands " -x L -y S "Reload Weather" 1 echo 0 > "$CURRENT_DIR_MENU/../scripts/firstStartup.txt"  "Close" 2 ""
