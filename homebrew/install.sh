#!/bin/sh
#
# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts



packages=(
# git
git
# vim & neovim
vim
neovim/neovim/neovim
# languages
ruby
go
node
python
# docker
docker
docker-machine
docker-compose
# utilities
z
fzf
ranger
htop
wget
ack
coreutils
terminal-notifier
anaconda
)

apps=(
# productivity
docker
slack
discord
iterm2
cyberduck
virtualbox
# utilities
# independent trackpad and mouse scroll direction
scroll-reverser
xscope
# browsers
firefox
google-chrome
# music
spotify
# fonts
font-hack-nerd-font
)

echo "==> Installing packages"
brew install "${packages[@]}"

echo "==> Installing apps"
#brew cask install "${apps[@]}"
