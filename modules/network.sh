#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/../scripts/functions.sh"
source "$CURRENT_DIR/../scripts/setup.sh"

theme=$(get_option "@celia-theme" "auto")
source "$CURRENT_DIR/../themes/$theme.sh"

# if [ -z $(iwgetid -r) ]; then
#   icon_status=$icon_offline
# tmux set-option -ga status-right "#[fg=$col_yellow]$rl_sep#[bg=$col_yellow]#[fg=$col_black]$icon_status#(echo ' ')#[fg=$col_yellow]#[bg=$col_black]#(echo ' ')#(echo 'Offline')#(echo ' ')#[fg=$col_black]#[bg=$col_back]$rr_sep#(echo ' ')"
# else
icon_status=$icon_wifi
tmux set-option -ga status-right "#[fg=$col_network]$rl_sep#[bg=$col_network]#[fg=$col_black]$icon_status#(echo ' ')#[fg=$col_network]#[bg=$col_black]#(echo ' ')#(iwgetid -r)#(echo ' ')#[fg=$col_black]#[bg=$col_back]$rr_sep#(echo ' ')"
# fi
