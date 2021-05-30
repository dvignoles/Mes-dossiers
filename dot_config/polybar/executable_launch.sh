#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
MONITOR=HDMI-0 polybar dan-PC-secondary 2>&1 | tee -a /tmp/polybar1.log & disown
MONITOR=DP-4 polybar dan-PC-secondary 2>&1 | tee -a /tmp/polybar2.log & disown
MONITOR=DVI-D-0 polybar dan-PC-main 2>&1 | tee -a /tmp/polybar3.log & disown
echo "Bars launched..."
