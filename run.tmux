#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Save current date + 30 minutes ahead.
echo $(date +"%H%M" --date="+30 minutes") > $CURRENT_DIR/../scripts/weatherInterval.txt

echo 0 > $CURRENT_DIR/../scripts/firstStartup.txt

tmux run-shell "$CURRENT_DIR/scripts/celia.sh"

