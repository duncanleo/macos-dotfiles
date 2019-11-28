#! /bin/bash

## Keyboard
# Key repeat delay
defaults write NSGlobalDomain InitialKeyRepeat -int 15
# Key repeat
defaults write NSGlobalDomain KeyRepeat -int 2

## Trackpad
# Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock orientation -string left
defaults write com.apple.dock tilesize -int 46

## System Preferences > Accessibility > Mouse & Trackpad > Trackpad Potions
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

defaults write com.apple.AppleMultitouchTrackpad Dragging -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -bool false

# System Preferences > Mission Controll > Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done
