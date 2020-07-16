#!/bin/bash

case $BUTTON in
	1) setsid -f "$TERMINAL" -e htop ;;
esac

printf " CPU "
sensors | awk '/Tdie:/{print $2}' | sed 's/+//g' | awk '{print $0" "}'
