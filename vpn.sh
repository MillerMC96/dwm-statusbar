#!/bin/bash
printf " VPN "

case $BUTTON in
	1) piactl connect ;;
        3) piactl disconnect ;;
esac

status=$( piactl get connectionstate )

while [ $status = "Connecting" ] || [ $status = "Disconnecting" ]
do
    status=$( piactl get connectionstate )
done
echo "$status "

#pkill -RTMIN+1 dwmblocks
