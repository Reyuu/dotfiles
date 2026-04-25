#!/bin/zsh
export BEMENU_SCALE=1.25
choice=$(printf "Logout\nRestart\nPower off" | bemenu -i -p "power menu" -w -B 1 \
	-M 10 -H 20 --ch 0 \
	--tb "#24283b" --tf "#c0caf5" \
	--fb "#24283b" --ff "#c0caf5" \
	--cb "#24283b" --cf "#c0caf5" \
	--nb "#24283b" --nf "#c0caf5" \
	--hb "#c0caf5" --hf "#24283b" \
	--scb "#24283b" --scf "#c0caf5" \
	--ab "#24283b" --af "#c0caf5" \
	-R 5 --bdr "#24283b" --fn "SF Pro" 10)

[ -z "$choice" ] && exit 0

case $choice in
	"Logout") swaymsg quit;;
	"Restart") loginctl reboot;;
	"Power off") loginctl poweroff;;
esac
