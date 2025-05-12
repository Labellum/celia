#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/../scripts/functions.sh"
source "$CURRENT_DIR/../scripts/setup.sh"

theme=$(get_option "@celia-theme" "auto")
source "$CURRENT_DIR/../themes/$theme.sh"

tmux set-option -ga status-right "#[fg=$col_blue]$rl_sep#[bg=$col_blue]#[fg=$col_black]$ico_battery#(echo ' ')#[fg=$col_blue]#[bg=$col_black]#(echo ' ')$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage" | awk '{print $2}')#(echo ' ')#[fg=$col_black]#[bg=$col_back]$rr_sep#(echo ' ')"
