#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo 0 > $CURRENT_DIR/scripts/firstStartup.txt

tmux run-shell "$CURRENT_DIR/scripts/celia.sh"

