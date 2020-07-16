#!/bin/bash

case $BUTTON in
	1) setsid -f "$TERMINAL" -e nvtop ;;
esac

status=$( nvidia-smi | grep "Default" | awk '{print $13}' )
printf " GPU %s \n" "${status}"
