#!/bin/bash

if [[ $(pgrep i3lock) ]];
then
    echo The station is already locked!
    exit
fi

# Define the location of the screensaver and get the current resolution
# TMPBG=/tmp/screen.png
#RES=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | head -n 1)
# RES=$(xrandr | head -n 1 | awk '{print $8$9$10}' | tr ',' ' ' | xargs)

# Get a screenshot and pixelate it (blur is slow, commented)
# ffmpeg -f x11grab -video_size $RES -i $DISPLAY -filter_complex "boxblur=20:1" -vframes 1 $TMPBG -loglevel quiet
# ffmpeg -y -f x11grab -video_size $RES -i $DISPLAY -vframes 1 $TMPBG -loglevel quiet # -vf scale=iw/20:ih/20,scale=20*iw:20*ih:flags=neighbor -vframes 1 $TMPBG -loglevel quiet

# pkill -u "$USER" -USR1 dunst

# Set the screensaver
# i3lock -e -i $TMPBG
swaylock -f -c 000000 -e -i ~/.ccwp.jpg
# if [[ -z $1 ]]; then
#     # Turn off the display after an amount of time
#     sleep 30; pgrep i3lock && xset dpms force off
# fi

# pkill -u "$USER" -USR2 dunst