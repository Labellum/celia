#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/functions.sh"

echo 0 > "$CURRENT_DIR/scripts/firstStartup.txt"
#tmux bind-key C-c display-popup -E "$CURRENT_DIR/menu/mainmenu.sh"
tmux bind-key "$(get_option "@celia-menu-key" "e")" run-shell "$CURRENT_DIR/menu/mainmenu.sh"

tmux run-shell "$CURRENT_DIR/scripts/celia.sh"

