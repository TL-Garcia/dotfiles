#!/bin/sh

CONFIG_DIR="$HOME/.config"

manage_config() {
  if [[ $# -ne 2 ]]
  then
    echo "Error: Wrong usage" >&2
    echo "Arguments should be: <program folder> <config file name>" >&2 
    exit 85 # Wrong arguments
  fi

  config_dir="$CONFIG_DIR/$1" 
  config_file_name="$2"
  config_file_path="$config_dir/$config_file_name"

  echo "Scanning for $config_file_name file in $1 directory..."

	if [[ -d "$config_dir" ]]
  then
		echo "Config already exists, exiting without making changes"
	else 
		mkdir "$config_dir"
		ln -s "$(pwd)/$config_file_name" "$config_file_path"

		echo "Creating config dir"	
	fi
  echo ""
}

cat file-names.txt | while IFS=: read -r config_dir config_file
do
  manage_config $config_dir $config_file
done
