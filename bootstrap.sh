#! /bin/bash

brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby
rbenv install 2.5.3
rbenv global 2.5.3
ruby -v

gem install rails -v 5.2.1

rbenv rehash

#Warn if docker not installed
if ! which docker >> /dev/null; then echo "WARNING-- DOCKER IS NOT INSTALLED ON THIS MACHINE (or is not in the PATH). Please install docker to develop on this project"; fi
