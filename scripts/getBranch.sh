#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CURRENT_DIR/setup.sh"

git_dir="$(tmux display-message -p -F "#{pane_current_path}" -t0)/.git"

# Check if there is a ".git" directory in the current directory
if [ -d "$git_dir" ]; then
  amt_added="$(git -C "$git_dir/.." status -s | grep -o 'A ' | wc -l)"
  amt_modified="$(git -C "$git_dir/.." status -s | grep -o 'M ' | wc -l)"
  amt_removed="$(git -C "$git_dir/.." status -s | grep -o 'D ' | wc -l)"
  amt_ignored="$(git -C "$git_dir/.." status -s | grep -o '?? ' | wc -l)"

  echo "$icon_branch $(git -C "$git_dir/.." branch | awk '{print $2}')  #[fg=$col_cyan]$icon_added $amt_added #[fg=$col_yellow]$icon_modified $amt_modified #[fg=$col_red]$icon_removed $amt_removed #[fg=$col_magenta]$icon_ignored $amt_ignored"
else
  echo ""
fi
