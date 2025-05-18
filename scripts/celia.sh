#!/usr/bin/env bash

# Get the installed tmux plugins
# plugin_path="$(tmux show-env -g TMUX_PLUGIN_MANAGER_PATH | cut -f2 -d=)"
#
# List the installed tmux plugins
# ls -1 "$plugin_path"

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/functions.sh"

# Declare all the variables. Look first if the user has configured them. If not, use a default fallback value.
source "$CURRENT_DIR/setup.sh"


# Modules
mod_bat="$CURRENT_DIR/../modules/bat.sh"
mod_net="$CURRENT_DIR/../modules/network.sh"
mod_clock="$CURRENT_DIR/../modules/clock.sh"
mod_git="$CURRENT_DIR/../modules/git.sh"

initCelia() {
  tmux set-option -g status-position $status_pos
  tmux set-option -g status-style bg=$col_back
  tmux set-option -g status-left ""
  tmux set-option -g status-right ""
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  tmux set-option -g status-right "#[fg=$col_text]#(echo 'Celia ')#(echo '$amount_modules_right')"

}

loadModules() {
  for ((i = 1; i <= $amount_modules_right; i++)); do
    get_modules=$(echo $modules_right | awk '{ print '\$$i'}')

    case $get_modules in
    "battery")
      source $mod_bat
      ;;
    "network")
      source $mod_net
      ;;
    "clock")
      source $mod_clock
      ;;
    esac
  done

  for ((i = 1; i <= $amount_modules_left; i++)); do
    get_modules=$(echo $modules_left | awk '{ print '\$$i'}')

    case $get_modules in
    "battery")
      source $mod_bat
      ;;
    "network")
      source $mod_net
      ;;
    "clock")
      source $mod_clock
      ;;
    "git")
      source $mod_git
      ;;
    esac
  done

  # source $mod_bat
  # source $mod_net
  # source $mod_clock
}

main() {
  initCelia
  loadModules
}

main
