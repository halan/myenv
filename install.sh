#!/bin/bash

# Dependencies
apt-get install git-all build-essential vim libreadline6 libreadline6-dev libssl-dev zsh curl terminator

# Janus
curl -Lo- https://bit.ly/janus-bootstrap | bash

# Oh my zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# RVM
 curl -L https://get.rvm.io | bash -s stable --ruby
