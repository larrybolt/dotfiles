# dnsMasq, so I never have to use /etc/hosts again! (well almost never ;)
# After making changes to config:
# sudo kill $(ps aux | grep '[d]nsmasq' | awk '{print $2}')
brew list | grep dnsmasq > /dev/null
if [ $? -eq 1 ]; then
	brew install dnsmasq
	cp /usr/local/opt/dnsmasq/dnsmasq.conf.example /usr/local/etc/dnsmasq.conf
	echo "address=/dev/127.0.0.1" >> /usr/local/etc/dnsmasq.conf
	# To have launchd start dnsmasq at startup:
	sudo cp -fv /usr/local/opt/dnsmasq/*.plist /Library/LaunchDaemons
	# Then to load dnsmasq now:
	sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
	sudo mkdir -p /etc/resolver/
	echo -e "nameserver 127.0.0.1\ndomain dev" | sudo tee -a /etc/resolver/dev
	echo -e "nameserver 127.0.0.1\ndomain ."   | sudo tee -a /etc/resolver/offline
else
	echo "dnsmasq is already installed"
fi
