#!/bin/bash

VOLUME=$(pamixer --get-volume)
VALUE=5

case "$1" in
  "up")
    [[ "$VOLUME" -eq 100 ]] && VALUE=0
    pamixer -u
    pamixer --increase $VALUE
    # say yo
    ;;
  "down")
    pamixer -u
    pamixer --decrease $VALUE
    # say yo
    ;;
  "mute")
    pamixer -m
    echo "test " > /tmp/test.txt
    ;;
esac

# Notification
VOLUME=$(pamixer --get-volume)
MUTE=$(pamixer --get-mute)

if [ "$MUTE" == "false" ]; then
  volnoti-show $VOLUME
else
  volnoti-show -m $VOLUME
fi
