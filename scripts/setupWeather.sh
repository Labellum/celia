#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

interval=$(cat "$CURRENT_DIR/weatherInterval.txt")
currentTime=$(date +"%H%M")
firstStartup=$(cat "$CURRENT_DIR/firstStartup.txt")

if [[ $currentTime -gt $interval ]] || [[ $firstStartup == 0 ]]; then 
 city=$(curl -s ifconfig.co/city)
 weather_cond=$(curl -s "wttr.in/$city?format=%C&nonce=$RANDOM")
 temp=$(curl -s "wttr.in/$city?format=%t&nonce=$RANDOM")
 
 echo $weather_cond > $CURRENT_DIR/weatherCond.txt
 echo $temp > $CURRENT_DIR/weatherTemp.txt
 
 if grep -q 'Unknown location' $CURRENT_DIR/weatherCond.txt; then
  echo "Unknown location" > "$CURRENT_DIR/weatherCond.txt"
  echo "󰼈" > "$CURRENT_DIR/weatherTemp.txt"
 fi

 if grep -q 'not ready' "$CURRENT_DIR/weatherCond.txt"; then
   echo "Loading..." > "$CURRENT_DIR/weatherCond.txt"
   echo "" > "$CURRENT_DIR/weatherTemp.txt"
 fi

 # Save current date + 30 minutes ahead.
 echo $(date +"%H%M" --date="+30 minutes") > $CURRENT_DIR/weatherInterval.txt

 echo 1 > $CURRENT_DIR/firstStartup.txt
else
  weather_cond=$(cat "$CURRENT_DIR/weatherCond.txt")
  temp=$(cat "$CURRENT_DIR/weatherTemp.txt")
fi
