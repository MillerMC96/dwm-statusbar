#!/bin/bash
printf "CPU "
sensors | awk '/Tdie:/{print $2}' | sed 's/+//g'
