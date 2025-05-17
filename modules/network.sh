#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/../scripts/functions.sh"
source "$CURRENT_DIR/../scripts/setup.sh"

theme=$(get_option "@celia-theme" "auto")
source "$CURRENT_DIR/../themes/$theme.sh"

tmux set-option -ga status-right "#[fg=$col_network]$rl_sep#[bg=$col_network]#[fg=$col_black]#(source $CURRENT_DIR/../scripts/checkNetworkStatus.sh)#(echo ' ')#[fg=$col_network]#[bg=$col_black]#(echo ' ')#(source $CURRENT_DIR/../scripts/getNetworkName.sh)#(echo ' ')#[fg=$col_black]#[bg=$col_back]$rr_sep#(echo ' ')"
