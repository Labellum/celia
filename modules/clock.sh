#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/../scripts/functions.sh"
source "$CURRENT_DIR/../scripts/setup.sh"

theme=$(get_option "@celia-theme" "auto")
source "$CURRENT_DIR/../themes/$theme.sh"

tmux set-option -ga status-right "#[fg=$col_green]$rl_sep#[bg=$col_green]#[fg=$col_black]$ico_clock#(echo ' ')#[fg=$col_green]#[bg=$col_black]#(echo ' ')#(printf $(date +%R))#(echo ' ')#[fg=$col_black]#[bg=$col_back]$rr_sep#(echo ' ')"
