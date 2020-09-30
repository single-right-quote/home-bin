#!/bin/execlineb -WS0

redirfd -r 0 /dev/tty
withstdinas -n LINE
importas -u LINE LINE
execlineb -c${LINE}" exec "${0}
