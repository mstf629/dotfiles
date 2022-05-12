#!/bin/sh

#update i3blocks
update="pkill -RTMIN+10 i3blocks"
case $1 in 
    up) pulsemixer --change-volume +5 && $update;;
    down) pulsemixer --change-volume -5&& $update;;
    mute) pulsemixer --toggle-mute && $update ;;
esac

pulsemixer --get-volume | sed 's/\s.*/% /'
