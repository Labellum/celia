#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/functions.sh"

# General Options
theme=$(get_option "@celia-theme" "auto")
source "$CURRENT_DIR/../themes/$theme.sh"
status_pos=$(get_option "@celia-pos" "top")
modules_right=$(get_option "@celia-modules-right" "battery network clock")
amount_modules_right_pre=$(echo "$modules_right" | grep -o ' ' | wc -l)
amount_modules_right=$(($amount_modules_right_pre + 1))
modules_left=$(get_option "@celia-modules-left" "git")
amount_modules_left_pre=$(echo "$modules_left" | grep -o ' ' | wc -l)
amount_modules_left=$(($amount_modules_left_pre + 1))
disp_repo_name=$(get_option "@celia-repo-name" "hide")
festive=$(get_option "@celia-festive" true)

# Separators
ll_sep=$(get_option "@celia-ll-sep" "")
lr_sep=$(get_option "@celia-lr-sep" "")
rl_sep=$(get_option "@celia-rl-sep" "")
rr_sep=$(get_option "@celia-rr-sep" "")

# Icons
icon_battery=$(get_option "@celia-icon-battery" "")
icon_wifi=$(get_option "@celia-icon-wifi" "")
icon_offline=$(get_option "@celia-icon-offline" "󰌙")
icon_clock=$(get_option "@celia-icon-clock" "󰥔")
icon_git=$(get_option "@celia-icon-git" "")
icon_repo_none=$(get_option "@celia-icon-repo-none" "")
icon_repo=$(get_option "@celia-icon-repo" "")
icon_branch=$(get_option "@celia-icon-branch" "󰘬")
icon_added=$(get_option "@celia-icon-added" "")
icon_modified=$(get_option "@celia-icon-modified" "")
icon_removed=$(get_option "@celia-icon-removed" "")
icon_ignored=$(get_option "@celia-icon-ignored" "")

# Modules Colors
col_battery=$(get_option "@celia-color-battery" "$col_blue")
col_network=$(get_option "@celia-color-network" "$col_yellow")
col_clock=$(get_option "@celia-color-clock" "$col_green")
col_git=$(get_option "@celia-color-git" "$col_green")

# Festivities!
if [ $festive == true ]; then
  if [[ $(date +"%m") == 10 ]]; then # Check if it's October
   icon_battery="󰮣"
   icon_wifi=""
   icon_clock=""
   icon_repo_none=""
   icon_repo="󰗚"
   col_battery=$col_yellow
   col_network=$col_yellow
   col_clock=$col_yellow
   col_git=$col_yellow
 fi
fi
