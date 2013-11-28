#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# bluethooth
blueutil power 1

# Change system volume
osascript -e "set Volume 4"

