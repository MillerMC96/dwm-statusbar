#!/bin/bash
vol=$( pamixer --get-volume )
printf " VOL "
if [ $(pamixer --get-mute) = true ]
then
    printf "MUTE \n"
else
    printf "$vol%% \n"
fi

