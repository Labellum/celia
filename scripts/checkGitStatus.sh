#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CURRENT_DIR/setup.sh"

git_dir="$(tmux display-message -p -F "#{pane_current_path}" -t0)/.git"

# Check if there is a ".git" directory in the current directory
if [ -d "$git_dir" ]; then
  echo " $icon_repo"
else
  echo " $icon_repo_none"
fi
