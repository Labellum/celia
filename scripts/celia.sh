#!/usr/bin/env bash

# Get the installed tmux plugins
plugin_path="$(tmux show-env -g TMUX_PLUGIN_MANAGER_PATH | cut -f2 -d=)"

# List the installed tmux plugins
ls -1 "$plugin_path"
