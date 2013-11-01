#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Include the interactive colorish stuff
source script/functions

# Check for Homebrew
if test ! $(which brew)
then
    echo "  Installing Homebrew for you."
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)" > /tmp/homebrew-install.log
fi

# Install common homebrew packages
brew install grc coreutils
brew install tree
brew install wget

# using separate sh files to add additional configurations, comments etc
for file in `find $(dirname $0)/packages/*.sh`;
do
  info "Installing package $file"
  sh $file
  if [ $? -eq 0 ]
  then
    success "Installing package $file was successful"
  else
    fail "error installing package $file"
  fi
done

exit 0
