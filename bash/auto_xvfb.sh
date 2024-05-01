
#!/bin/bash
Xvfb "$DISPLAY" -screen "$XVFB_SCREEN" "$XVFB_RESOLUTION" -ac -nolisten tcp &
_xvfb_pid="$!"

function _stop_xvfb() {
  kill "$_xvfb_pid" >/dev/null 2>&1
  rm -f /tmp/.X*-lock    
}
trap _stop_xvfb EXIT

while ! xdpyinfo -display "$DISPLAY" >/dev/null 2>&1; do 
  echo "$(date) - Waiting for Xvfb..."
  sleep 0.5
done
