#Use the version of vim that comes with MacVim
#(using an up-to-date version of vim without having to install any packages or replacing the default version)
# check if MacVim is installed at /Applications or in ~/Application (when using homebrew-cask the latter)
if [ -e "/Applications/MacVim.app" ]; then
	alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
    alias mvim='$DOTS/vim/mvim'
elif [ -e "$HOME/Applications/MacVim.app" ]; then
	alias vim='~/Applications/MacVim.app/Contents/MacOS/Vim'
    alias mvim='$DOTS/vim/mvim'
fi
