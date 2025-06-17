#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo 0 > "$CURRENT_DIR/scripts/firstStartup.txt"
#tmux bind-key C-c display-popup -E "$CURRENT_DIR/menu/mainmenu.sh"
tmux bind-key C-c run-shell "$CURRENT_DIR/menu/mainmenu.sh"

tmux run-shell "$CURRENT_DIR/scripts/celia.sh"

