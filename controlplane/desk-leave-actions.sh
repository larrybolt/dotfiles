#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# bluethooth
blueutil power 0

# WiFi
networksetup -setairportpower en1 on

# Change system volume
osascript -e "set Volume 1"

