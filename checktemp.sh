#!/bin/bash

TEMP_C=$(cat /sys/class/thermal/thermal_zone0/temp | awk '{print $1 / 1000}' | sed 's/,/./');
# TEMP_C=99.5

# Workaround to bash' lack of float comparison
# Defer the float comparison to awk which then outputs 1 if the temp is higher than 70, or 0 otherwise
# Then check in bash using -eq operator

if [ $(awk 'BEGIN {print ('$TEMP_C' >= 70)}') -eq 1 ]; then
    echo "mans hot"
	sed -e 's/--TEMP_C--/'$TEMP_C'/g' ${BASH_SOURCE%/*}/alert.mail | msmtp --read-recipients --add-missing-date-header
else 
    echo "mans not hot"
fi
