#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/setup.sh"

weather_cond=$(curl -s wttr.in/$city?format=%C&nonce=$RANDOM)

# TODO: Add Case statement for weather conditions and what icon should be displayed
    case $weather_cond in
    "Partly cloudy")
      icon_weather="󰖕"
      ;;
    "Clear")
      icon_weather="󰖙"
      ;;
    "weather")
      icon_weather="󰖕"
      ;;
    "clock")
      icon_weather="󰖕"
      ;;
    esac
echo $icon_weather
