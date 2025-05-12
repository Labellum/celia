#!/usr/bin/env bash

# Get the installed tmux plugins
# plugin_path="$(tmux show-env -g TMUX_PLUGIN_MANAGER_PATH | cut -f2 -d=)"
#
# List the installed tmux plugins
# ls -1 "$plugin_path"

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/functions.sh"

# Declare all the variables. Look first if the user has configured them. If not, use a default fallback value.
status_pos=$(get_option "@celia-pos" "bottom")

theme=$(get_option "@celia-theme" "auto")
source "$CURRENT_DIR/../themes/$theme.sh"

source "$CURRENT_DIR/setup.sh"

mod_bat="$CURRENT_DIR/../modules/bat.sh"
mod_con="$CURRENT_DIR/../modules/connection.sh"
mod_clock="$CURRENT_DIR/../modules/clock.sh"

initCelia() {
  tmux set-option -g status-position $status_pos
  tmux set-option -g status-style bg=$col_back
  tmux set-option -g status-left ""
  tmux set-option -g status-right ""
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  tmux set-option -g status-right "#[fg=$col_text]#(echo 'Celia ')"

}

loadModules() {
  source $mod_bat
  source $mod_con
  source $mod_clock
}

main() {
  initCelia
  loadModules
}

main
