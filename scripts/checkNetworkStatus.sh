#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CURRENT_DIR/setup.sh"

if [ -z $(iwgetid -r) ]; then
  echo "$icon_offline"
else
  echo "$icon_wifi"
fi
