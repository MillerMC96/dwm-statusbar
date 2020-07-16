#!/bin/bash
status=$( nvidia-smi | grep "Default" | awk '{print $13}' )
printf " GPU %s \n" "${status}"
