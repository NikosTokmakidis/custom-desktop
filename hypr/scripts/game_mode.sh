#! /bin/bash

echo "#################"
echo "### GAME MODE ###"
echo "#################"

echo
echo "Game mode (on/off)"
read x

if [[ $x == "on" ]]; then
	cp ~/.config/hypr/hyprland\ Performance.conf ~/.config/hypr/hyprland.conf
	echo "Game mode is now turned on"
elif [[ $x == "off" ]]; then
	cp ~/.config/hypr/hyprland\ Animated.conf ~/.config/hypr/hyprland.conf
	echo "Game mode is now turned off"
else
	echo "Not a valid option. Cancelling request"
	sleep 3
	exit 1
fi

hyprctl	reload
echo "Configuration reloaded"
sleep 2

