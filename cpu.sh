#!/bin/bash

case $BUTTON in
	1) setsid -f "$TERMINAL" -e htop ;;
esac

temp=$( sensors | awk '/Tdie:/{print $2}' | sed 's/+//g' | awk '{print $0}' )
printf " CPU %s \n" "$temp"
