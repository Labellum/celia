#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/../scripts/functions.sh"
source "$CURRENT_DIR/../scripts/setup.sh"

theme=$(get_option "@celia-theme" "auto")
source "$CURRENT_DIR/../themes/$theme.sh"

tmux set-option -ga status-right "#[fg=$col_clock]$rl_sep#[bg=$col_clock]#[fg=$col_black]$icon_clock#(echo ' ')#[fg=$col_clock]#[bg=$col_black]$date %R#(echo ' ')#[fg=$col_black]#[bg=$col_back]$rr_sep#(echo ' ')"
