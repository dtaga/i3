#!/bin/bash


BATTINFO=`acpi -b | head -n 1`
if [[ `echo $BATTINFO |grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:15:00 ]] ; then
    /usr/bin/notify-send --icon=battery-low "BATTERY LOW" "$BATTINFO"
    # /usr/bin/i3-nagbar -m "Battery Low"
fi
