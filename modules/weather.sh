#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/../scripts/functions.sh"
source "$CURRENT_DIR/../scripts/setup.sh"


tmux set-option -ga status-right "#[fg=$col_weather]$rl_sep#[bg=$col_weather]#[fg=$col_black]#(source '$CURRENT_DIR/../scripts/checkWeatherIcon.sh')#(echo ' ')#[fg=$col_weather]#[bg=$col_black]#(echo ' ')#(source '$CURRENT_DIR/../scripts/getWeather.sh')#(echo ' ')#[fg=$col_black]#[bg=$col_back]$rr_sep#(echo ' ')"
