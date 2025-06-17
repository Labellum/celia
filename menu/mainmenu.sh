#!/usr/bin/env bash

CURRENT_DIR_MENU="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

reloadWeather(){
  echo "bruh"
  echo 0 > "$CURRENT_DIR_MENU/../scripts/firstStartup.txt"
}

tmux display-menu -T " Celia Commands " -x L -y S "Reload Weather" 1 "run \"$CURRENT_DIR_MENU/reloadWeather.sh\"" "Close" 2 ""
