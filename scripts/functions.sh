#!/usr/bin/env bash

# Gets the relevant option from the user's config. (Shamelessly copied from 2kabhishek's tmux2k plugin ♥ )
get_option() {
  local option=$1
  local fallback=$2
  local value=$(tmux show-options -gqv "$option")

  if [ -z "$value" ]; then
    echo "$fallback" # If the user has not configured the option then a default fallback value will be used.
  else
    echo "$value"
  fi
}
