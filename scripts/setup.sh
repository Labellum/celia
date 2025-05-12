#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/functions.sh"

# Separators
ll_sep=$(get_option "@celia-ll-sep" "")
lr_sep=$(get_option "@celia-lr-sep" "")
rl_sep=$(get_option "@celia-rl-sep" "")
rr_sep=$(get_option "@celia-rr-sep" "")

# Icons
ico_battery=$(get_option "@celia-icon-battery" "")
ico_wifi=$(get_option "@celia-icon-wifi" " ")
ico_clock=$(get_option "@celia-icon-clock" "󱑎")
