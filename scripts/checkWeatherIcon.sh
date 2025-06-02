#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/setup.sh"

city=$(curl -s ifconfig.co/city)
weather_cond=$(curl -s "wttr.in/$city?format=%C&nonce=$RANDOM")

    case $weather_cond in
    "Partly cloudy")
      icon_weather="󰖕"
      ;;
    "Clear")
      icon_weather="󰖙"
      ;;
    "Sunny")
      icon_weather="󰖙"
      ;;
    "clock")
      icon_weather="󰖕"
      ;;
    esac
echo $icon_weather
