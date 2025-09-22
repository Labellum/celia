#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CURRENT_DIR/setup.sh"

git_dir="$(tmux display-message -p -F "#{pane_current_path}")/.git"
repo_name="$(basename "$(git -C "$git_dir/.." config --get remote.origin.url)" | awk -F'.' '{print $1}')"

# Check if there is a ".git" directory in the current directory
if [ -d "$git_dir" ]; then

  if [[ $disp_repo_name == "show" ]]; then
    echo "$icon_repo $repo_name #[fg=$col_git, bg=$col_black]$lr_sep"
  else
    echo "$icon_repo"
  fi

else
  echo "$icon_repo_none"
fi
