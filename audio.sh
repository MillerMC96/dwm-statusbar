#!/bin/bash

# function for switching audio sources
switch_source() {
    # first get audio streams
    pactl list short sink-inputs|while read stream; do
        newSink="$1"
        streamId=$(echo $stream|cut '-d ' -f1)
    
        pactl move-sink-input "$streamId" "$newSink"
    done
}

vol=$( pamixer --get-volume )
printf " VOL "
if [ $(pamixer --get-mute) = true ]
then
    printf "MUTE \n"
else
    printf "$vol%% \n"
fi

