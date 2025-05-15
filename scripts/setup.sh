#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/functions.sh"

# General Options
status_pos=$(get_option "@celia-pos" "top")

# Separators
ll_sep=$(get_option "@celia-ll-sep" "")
lr_sep=$(get_option "@celia-lr-sep" "")
rl_sep=$(get_option "@celia-rl-sep" "")
rr_sep=$(get_option "@celia-rr-sep" "")

# Icons
icon_battery=$(get_option "@celia-icon-battery" "")
icon_wifi=$(get_option "@celia-icon-wifi" "")
icon_offline=$(get_option "@celia-icon-offline" "󰌙")
icon_clock=$(get_option "@celia-icon-clock" "󰥔")

# Modules Colors
col_battery=$(get_option "@celia-color-battery" "$col_blue")
col_network=$(get_option "@celia-color-network" "$col_yellow")
col_clock=$(get_option "@celia-color-clock" "$col_green")
