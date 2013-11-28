#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# bluethooth
blueutil power 0 # 0=off, 1=on

# WiFi
networksetup -setairportpower en1 on # on/off

# Change system volume
osascript -e "set Volume 10" # 0=mute, 10=max

# Kill apps and save for restore afterwards
function controlplane_suspend {
    cp_date=`date +"%m-%d-%y"`
    controlplane_suspend_file="/tmp/controlplane_suspend_${1}_${cp_date}.tmp"
    if [ -e $controlplane_suspend_file ]; then
        rm $controlplane_suspend_file
    fi
    touch $controlplane_suspend_file

    for apps in ${@:2}; do
        killall $apps
        if [ $? -eq "1" ]; then
            echo $apps >> $controlplane_suspend_file
        fi
    done
}
