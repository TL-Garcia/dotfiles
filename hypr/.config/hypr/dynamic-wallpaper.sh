#!/bin/bash

# Wait for 5 seconds to start the script.
sleep 5

# Define daytime and nighttime image to respective variables
DAYTIME_WALLPAPER=~/Pictures/wallpapers/vk-sunrise.png
NIGHTTIME_WALLPAPER=~/Pictures/wallpapers/vk-sunset.png

# Calculate the present hour and save it to a variable 
PRESENT_TIME=$(date +%H)

# In an if loop, check if current time is between 6 am and 6 pm 
# and assign day wallpaper to wallpaper variable.
# Else, if time is between 6 pm and 6 am, 
# assign night time wallpaper to wallpaper variable.
if [ $PRESENT_TIME -ge 6 ] && [ $PRESENT_TIME -lt 18 ]; then # TODO: Compute day/night time dynamically based on geolocation & season
	WALLPAPER=$DAYTIME_WALLPAPER
else
	WALLPAPER=$NIGHTTIME_WALLPAPER
fi

# Preload the wallpaper in the wallpaper variable.
hyprctl hyprpaper preload "$WALLPAPER"

# Sleep 5 secconds to make sure that everything has time.
sleep 5

# Apply the wallpaper to current display.
hyprctl hyprpaper wallpaper "DP-2,$WALLPAPER" # TODO: Parametrize monitor name

# Sleep for a second
sleep 1

# Exit with success.
exit 0
