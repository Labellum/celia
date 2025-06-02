#!/usr/bin/env bash

interval=$(cat weatherInterval.txt)
currentTime=$(date +"%H:%M")
firstStartup=$(cat firstStartup.txt)

if [ "$currentTime" -gt "$interval"] || [ -z "$firstStartup" ]; then 
 city=$(curl -s ifconfig.co/city)
 weather_cond=$(curl -s "wttr.in/$city?format=%C&nonce=$RANDOM")
 temp=$(curl -s "wttr.in/Varberg?format=%t&nonce=$RANDOM")
 
# Save current date + 30 minutes ahead.
 echo $(date +"%H:%M" --date="+30 minutes") > $CURRENT_DIR/../scripts/weatherInterval.txt

 echo 1 > $CURRENT_DIR/../scripts/firstStartup.txt
 fi
