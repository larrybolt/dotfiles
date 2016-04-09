#!/bin/sh
#
# Vim
#
# This installs NeoBundle for mac

cd $HOME
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
mkdir -p $HOME/.vim/backups
