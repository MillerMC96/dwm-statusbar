#!/bin/bash
printf " VPN "

case $BUTTON in
	1) piactl connect ;;
        3) piactl disconnect ;;
esac

status=$( piactl get connectionstate )
echo "$status "

while [ $status = "Connecting" ] || [ $status = "Disconnecting" ]
do
    status=$( piactl get connectionstate )
done

pkill -RTMIN+10 dwmblocks
    
#    if [ $status = "Connected" ] || [ $status = "Disconnected" ]
#    then
#    status=$( piactl get connectionstate )
#    echo "${status} "
#    break
#    fi


#if [ $status = "Connected" ]
#then
#    printf "✓"
#elif [ $status = "Connecting" ]
#then
#    printf "..."
#else
#    printf "X"
#fi
