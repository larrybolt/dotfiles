# install requirements
brew install automake autoconf curl pcre re2c mhash libtool icu4c gettext jpeg libxml2 mcrypt gmp libevent
brew link icu4c

# Install phpbrew
curl -O https://raw.github.com/c9s/phpbrew/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/bin/phpbrew
# Install the latest php version with openssl, pdo and apxs2 (allows to use it with apache)
phpbrew_lastversion=`phpbrew known | sed -n 2p | tr -d ' \t'`
# check if it isn't installed first
phpbrew list | grep $phpbrew_lastversion > /dev/null
if [ $? -eq 1 ]; then
	phpbrew install  +default +pdo +openssl +debug +apxs2
fi