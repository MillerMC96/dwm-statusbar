#!/bin/bash

# function for switching audio sources
switch_source() {
    # first get audio streams
    pactl list short sink-inputs|while read stream; do
        newSink="$1"
        streamId=$(echo $stream|cut '-d ' -f1)
    
        pactl move-sink-input "$streamId" "$newSink"
        pactl set-default-sink "$1"
    done
}

case $BUTTON in
	1) switch_source 0 ;;
	3) switch_source 2 ;;
esac

# string of VOL
VOLS=" VOL "
PERCENT="%% \n"
MUTES="MUTE"

vol=$VOLS$( pamixer --get-volume )$PERCENT
if [ $(pamixer --get-mute) = true ]
then
    printf "$VOLS$MUTES \n"
else
    printf "$vol"
fi
