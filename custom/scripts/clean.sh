#!/bin/zsh

echo "Updating Brew 🍺 and Cleaning up the Cask 🌊..."
brew update
brew update --cask
brew upgrade
brew cleanup
brew doctor 

echo "Updating yarn dependencies"
yarn global upgrade
echo "✅ Done Cleaning yarn dependencies"

echo "Updating MacOS AppStore Apps"
mas upgrade
echo "✅ Done Updating MacOS AppStore Apps"