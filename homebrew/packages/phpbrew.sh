# install requirements
brew install automake autoconf curl pcre re2c mhash libtool icu4c gettext jpeg libxml2 mcrypt gmp libevent
brew link icu4c

# Set permissions to install apxs2 in /usr/libexec/apache2/
sudo chmod 777 /usr/libexec/apache2/

# set permissions to the httpd.conf to allow switching versions for apache
sudo chmod 777 /private/etc/apache2/httpd.conf

# Install phpbrew
pushd $(mktemp -d /tmp/fonts.XXXX);
wget https://raw.github.com/c9s/phpbrew/master/phpbrew
chmod +x phpbrew
sudo cp phpbrew /usr/bin/phpbrew
popd
phpbrew init

phpbrew install 5.4.28 +default +pdo +openssl +debug +apxs2
phpbrew install 5.5.12 +default +pdo +openssl +debug +apxs2

# Install the latest php version with openssl, pdo and apxs2 (allows to use it with apache)
#phpbrew_lastversion=`phpbrew known | sed -n 2p | tr -d ' \t'`
# check if it isn't installed first
#phpbrew list | grep $phpbrew_lastversion > /dev/null
#if [ $? -eq 1 ]; then
	#phpbrew install $phpbrew_lastversion +default +pdo +openssl +debug +apxs2
#fi
