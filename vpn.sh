#!/bin/bash
printf " VPN "
status=$( piactl get connectionstate )

if [ $status = "Connected" ]
then
    printf "✓ "
elif [ $status = "Connecting"  ]
then
    printf "..."
else
    printf "x"
fi
