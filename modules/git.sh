#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/../scripts/functions.sh"
source "$CURRENT_DIR/../scripts/setup.sh"


tmux set-option -ga status-left "#{?client_prefix,#[fg=$col_prefix]$ll_sep#[bg=$col_prefix]#[fg=$col_black]#(source $CURRENT_DIR/../scripts/checkGitStatus.sh)#(echo ' ')#[fg=$col_prefix]#[bg=$col_black]#(echo ' ')#(source $CURRENT_DIR/../scripts/getBranch.sh)#(echo ' ')#[fg=$col_black]#[bg=$col_back]$lr_sep#(echo ' '),#[fg=$col_git]$ll_sep#[bg=$col_git]#[fg=$col_black]#(source $CURRENT_DIR/../scripts/checkGitStatus.sh)#(echo ' ')#[fg=$col_git]#[bg=$col_black]#(echo ' ')#(source $CURRENT_DIR/../scripts/getBranch.sh)#(echo ' ')#[fg=$col_black]#[bg=$col_back]$lr_sep#(echo ' ')}"
