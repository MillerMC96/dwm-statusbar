#!/bin/bash
printf " MEM "
free -h | awk '/^Mem/ { print $3"/"$2 }' | sed s/i//g | awk '{print $0" "}'
