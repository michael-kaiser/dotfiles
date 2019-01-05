#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

echo "here"
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

echo "here2"


for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload example &
    MONITOR=$m polybar --reload bottom &
done

echo "Bars launched..."
