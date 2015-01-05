#!/bin/sh
cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm "$DIR/karbiner-export.sh"
cli export > "$DIR/karbiner-export.sh"
