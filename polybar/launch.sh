#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -rq main &
#polybar -rq left &
#polybar -rq right &
#polybar -rq center &

echo "Polybar launched..."
