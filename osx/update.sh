DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
find /Applications -path '*Contents/_MASReceipt/receipt' -maxdepth 4 -print |\sed 's#.app/Contents/_MASReceipt/receipt#.app#g; s#/Applications/##' | cut -d'.' -f1 > "$DIR/AppStore-apps.txt"
