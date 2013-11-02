DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -nfs $DIR/private.xml "$HOME/Library/Application Support/KeyRemap4MacBook/"
sh "$DIR/kr4mb.sh"

