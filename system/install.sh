if [ `ls -l $HOME/Library/Fonts | awk '!/^d/{print }' | wc -l | tr -d ' \t'` -eq 0 ]; then
	pushd $(mktemp -d /tmp/fonts.XXXX);
	git clone https://github.com/Lokaltog/powerline-fonts.git .
	mv */*.*tf "$HOME/Library/Fonts/"
	popd
fi
