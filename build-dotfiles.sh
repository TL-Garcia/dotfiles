#!/bin/sh

CONFIG_DIR="$HOME/.config"

tmux_dir="$CONFIG_DIR/tmux" 
if [[ -d "$tmux_dir" ]]; then
	echo "Config dir already exists"
else 
	mkdir "$tmux_dir"
	ln -s "$(pwd)/tmux.conf" "$tmux_dir/tmux.conf"

	echo "Creating config dir"	
fi

