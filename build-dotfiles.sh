#!/bin/sh

CONFIG_DIR="$HOME/.config"

manage_config() {
  if [[ $# -ne 1 ]]
  then
    echo "Error: Wrong usage" >&2
    echo "Arguments should be: <program folder> <config file name>" >&2 
    exit 85 # Wrong arguments
  fi

   dir_name="$1"
   dir_path="$CONFIG_DIR/$dir_name" 

  echo "Scanning for $dir_name..."

	if [[ -d "$dir_path" ]]
  then
		echo "Config already exists, exiting without making changes"
	else 
		ln -s "$(pwd)/$dir_name" "$dir_path"

		echo "Creating symlink to $dir_path"	
	fi
  echo ""
}

dir_names=$(ls -d */ | sed 's/\///')

for dir_name in $dir_names
do
  manage_config $dir_name
done

