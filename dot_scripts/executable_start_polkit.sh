#!/bin/bash
# Used to start the polkit-dumb-agent for a user friendly authentication approch
POLKIT_AGENT=lxqt-policykit-agent

killall -q "$POLKIT_AGENT" 

while pgrep -u $UID -x "$POLKIT_AGENT" > /dev/null; do sleep 0.5; done

"$POLKIT_AGENT" &
