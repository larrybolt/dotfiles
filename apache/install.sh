#!/bin/sh

# INSTALL SCRIPT
# The Install script is run after executing the command `script/dotfiles-install`,
# this should be ran when setting up a new mac, but should be able to ran multiple times
# as a sort of update of the system afterwards as well 
# (Check whenever something already exists should be made though)

# $DIR matches with the current directory, eg: ~/.dotfiles/templates/
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# TIPS:
# When creating symlinks, best use `ln -nfs "$DIR/source" "target"

sudo rm /etc/apache2/httpd.conf
sudo ln -nfs $DIR/httpd.conf /etc/apache2/httpd.conf
sudo apachectl restart

