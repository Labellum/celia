#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CURRENT_DIR/setup.sh"

if [ -z $(iwgetid -r) ]; then
  echo "Offline"
else
  echo "$(iwgetid -r)"
fi
