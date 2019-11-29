#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew upgrade

# Tap
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers

# Install fonts
while read font; do
  brew cask install $font
done < brew/fonts.txt

# Install tools
while read tool; do
  brew install $tool
done < brew/tools.txt

# Install apps
while read app; do
  brew cask install $app
done < brew/apps.txt

# Install drivers
while read driver; do
  brew cask install $driver
done < brew/drivers.txt


# Install Mac App Store
brew install mas
while read masapp; do
  mas lucky $masapp
done < brew/mas-apps.txt
