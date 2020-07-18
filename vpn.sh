#!/bin/bash

case $BUTTON in
	1) piactl connect ;;
        3) piactl disconnect ;;
esac

status=$( piactl get connectionstate )

while [ $status = "Connecting" ] || [ $status = "Disconnecting" ]
do
    status=$( piactl get connectionstate )
done

if [ $status = "Connected" ]
then
    icon="🔒"
else
    icon="🔓"
fi

printf " VPN $icon \n"
