#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CURRENT_DIR/setup.sh"

str_networkName=""

if [ -z $(iwgetid -r) ]; then
  echo "$icon_offline"
  $str_networkName="Offline"
else
  echo "$icon_wifi"
  $str_networkName="$(iwgetid -r)"
fi
