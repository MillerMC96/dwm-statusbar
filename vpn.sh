#!/bin/bash
printf " VPN "
status=$( piactl get connectionstate )

echo "${status} "

#if [ $status = "Connected" ]
#then
#    printf "✓"
#elif [ $status = "Connecting" ]
#then
#    printf "..."
#else
#    printf "X"
#fi
