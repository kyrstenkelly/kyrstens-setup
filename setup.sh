#!/bin/bash
set -e

# Install NVM, Node, & NPM
brew install nvm
nvm install stable
nvm use stable

# Install and setup Git
# brew install git
git config --global user.email "kyrsten.kelly@gmail.com"
git config --global user.name "Kyrsten Kelly"
git config --global alias.cob checkout -b

# Install and set up Go
# test -d "${GOPATH}" || mkdir "${GOPATH}"
# test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
# brew install go

# Install various applications
brew cask install google-chrome
brew cask install visual-studio-code

# Install & Set up iTerm
brew cask install iterm2
brew install zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
