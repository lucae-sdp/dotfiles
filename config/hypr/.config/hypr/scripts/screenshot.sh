#!/usr/bin/env bash

 #########################
 ### screenshot script ###
 #########################

 dir="$HOME/Pictures/Screenshots"
 file="$dir/shot-$(date +%F_%H-%M-%S).png"
 mkdir -p "$dir"

 case "$1" in
	 region) grim -g "$(slurp)" - ;;
	 full)   grim - ;;
	 *)      exit 1 ;;
 esac | tee "$file" | wl-copy

 dunstify "Screenshot saved" "$(basename "$file")" -t 1000
