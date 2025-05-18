#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/../scripts/functions.sh"
source "$CURRENT_DIR/../scripts/setup.sh"

theme=$(get_option "@celia-theme" "auto")
source "$CURRENT_DIR/../themes/$theme.sh"


tmux set-option -ga status-left "#[fg=$col_git]$ll_sep#[bg=$col_git]#[fg=$col_black]#(source $CURRENT_DIR/../scripts/checkGitStatus.sh)#(echo ' ')#[fg=$col_git]#[bg=$col_black]#(echo ' ')#(source $CURRENT_DIR/../scripts/getBranch.sh)#(echo ' ')#[fg=$col_black]#[bg=$col_back]$lr_sep#(echo ' ')"
