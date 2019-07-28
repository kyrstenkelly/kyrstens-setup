#!/bin/bash

curl https://raw.githubusercontent.com/kyrstenkelly/kyrstens-setup/master/.bash_profile > ~/.bash_profile
curl https://raw.githubusercontent.com/kyrstenkelly/kyrstens-setup/master/.gitconfig > ~/.gitconfig

# Install xcode
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew install brew-cask

# Install NVM, Node, & NPM
brew install nvm
nvm install stable
nvm use stable

# Install and setup Git
brew install git
git config --global user.email "kyrsten.kelly@gmail.com"
git config --global user.name "Kyrsten Kelly"
git config --global alias.cob checkout -b
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.bash
cp ./.git-completion.bash ~/.git-completion.bash
cp ./.git-prompt.sh ~/.git-prompt.sh

# Install and set up Go
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
brew install go

# Install various applications
brew cask install google-chrome
brew cask install iterm2
brew cask install visual-studio-code
