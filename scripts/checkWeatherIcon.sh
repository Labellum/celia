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
    "Light rain")
      icon_weather=""
      ;;
    "Patchy rain nearby")
      icon_weather=""
      ;;
    "Mist")
      icon_weather=""
      ;;
    "Unknown location")
      icon_weather=""
      ;;
    esac
echo $icon_weather
