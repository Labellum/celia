#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/setupWeather.sh"

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
    "Overcast")
      icon_weather="󰖐"
      ;;
    esac
echo $icon_weather
