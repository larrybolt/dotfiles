#!/bin/sh
cli=/Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm "$DIR/kr4mb.sh"
cli export > "$DIR/kr4mb.sh"
