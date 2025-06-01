#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/setup.sh"

city=$(curl -s ifconfig.co/city)
weather_cond=$(curl -s wttr.in/$city?format=%C&nonce=$RANDOM)
temp=$(curl -s wttr.in/$city?format=%t&nonce=$RANDOM)

echo "$weather_cond $temp"
