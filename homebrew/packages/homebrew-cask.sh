# Include the interactive colorish stuff
source script/functions

brew tap phinze/homebrew-cask
brew install brew-cask
echo "Brew cask installed"
function installcask() {
	#user "Do you want to install ${@}? [y]es/[n]o "
	#read -n 1 REPLY
	#if [[ $REPLY =~ ^[Yy]$ ]]; then
		#brew cask install "${@}" 2> /dev/null
		brew cask install "${@}"
		success "Installed ${@}"
	#fi
	echo
}
installcask dropbox
#installcask alfred
installcask google-chrome
installcask iterm2
installcask macvim
installcask miro-video-converter
installcask sublime-text
installcask the-unarchiver
installcask transmission
installcask virtualbox
installcask vagrant
installcask vlc
installcask slate
installcask skype
installcask mplayerx
installcask keyremap4macbook
installcask flip4mac
installcask disk-inventory-x
installcask gitx
installcask firefox
# TODO: Find a way to install firefox addons from command line: https://developer.mozilla.org/en-US/docs/Mozilla/Command_Line_Options?redirectlocale=en-US&redirectslug=Command_Line_Options#Add-ons
installcask droplr
installcask emacs
installcask cloudapp
installcask adium
# TODO: add a way to install adium plugins as well and set settings
installcask vox
#installcask dash #stupid app store purchase!
installcask controlplane
installcask quick-cast
installcask bettertouchtool
installcask chameleon-ssd-optimizer
