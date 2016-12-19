#!/bin/sh
#
# Brew packages that I use alot.
# Remember before to run:
#   1. to chmod a+x installConfig.sh
#   2. ./installConfig.sh
#
# First, check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install brew apps
brew install autoconf
brew install aircrack-ng
brew install aria2
brew install automake
brew install caskroom/cask/brew-cask
brew install curl
brew install fish
brew install gnupg
# fixing to install gpg 2.1 and not 2.0 following https://www.rempe.us/blog/yubikey-gnupg-2-1-and-ssh/
brew tap homebrew/versions
brew install gnupg21
brew install pinentry-mac
# done fixing
brew install gnutls
brew install gpg-agent
brew install gpgme
brew install lame
brew install lftp
brew install mosh
brew install openssl
brew install pandoc
brew install python
brew install speedtest_cli
brew install tmux
brew install tor
brew install vim
brew install wget
brew install youtube-dl

#
# Some cask packages that I like.
# First, allow caskroom

brew tap caskroom/cask

#
brew cask install 1password
brew cask install appcleaner
brew cask install atext # not TextExpander anymore
brew cask install bartender
brew cask install caffeine
brew cask install calibre
brew cask install cloak
brew cask install coyim
brew cask install chromium
brew cask install delibar
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install iterm2
brew cask install little-snitch
brew cask install mactex
brew cask install mojibar
brew cask install mumble
brew cask install mpv
brew cask install onyx
brew cask install reeder
brew cask install ricochet
brew cask install seafile-client
brew cask install skype
brew cask install slack
brew cask install spectacle
brew cask install syncthing
brew cask install syncthing-bar
brew cask install telegram
brew cask install thunderbird  
brew cask install the-unarchiver
brew cask install torbrowser
brew cask install transmit
brew cask install viscosity
brew cask install vlc
brew cask install xld


# Let's add some font
brew tap caskroom/fonts 
brew cask install font-m-plus
brew cask install font-clear-sans
brew cask install font-roboto
brew cask install font-inconsolata
brew cask install font-Mensch
brew tap colindean/fonts-nonfree
brew cask install font-microsoft-office
