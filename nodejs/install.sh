# nodejs is already installed by brew, look at $DOTS/homebrew/packages/nodejs.sh
if [ ! -e "$HOME/.nvm" ]; then
	git clone https://github.com/creationix/nvm.git $HOME/.nvm
fi
