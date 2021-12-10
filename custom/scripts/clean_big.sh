#!/bin/zsh
cacheWhitelist=('com.apple.' 'com.docker.' 'CloudKit' 'Animoji' 'askpermissiond' 'com.microsoft.' 'familycircled' 'Configuration' 'GeoServices' 'PassKit' 'Homebrew' 'CloudKit' 'GameKit' 'Yarn')
filesToDelete=()

echo "⏱️ Time to upgrade and clean your system, this may take a while..."

echo "🚀 Cleaning cache..."
/Users/olivierdijkstra/.oh-my-zsh/custom/scripts/clean_cache.sh
echo "✅ Cleaning cache complete"

echo "🚀 Upgrading files and homebrew packages..."
softwareupdate --all --install --force
/Users/olivierdijkstra/.oh-my-zsh/custom/scripts/clean_homebrew.sh
echo "✅ Done upgrading files and homebrew packages"

echo "🚀 Running diagnostics..."
brew doctor
brew missing
for ext in `code --list-extensions`
	do 
		code --install-extension "$ext" --force 
	done
echo "✅ Diagnostics complete!"

echo "🚀 Updating AppStore apps..."
mas outdated | awk '{print $1}' | xargs -n 1 mas upgrade
echo "✅ Done updating AppStore apps"

echo "🚀 NPM packages..."
npm update -g
echo "✅ Done updating NPM packages"

echo "🚀 Time to review the launch agents..."
/Users/olivierdijkstra/.oh-my-zsh/custom/scripts/launch_agents.sh

echo "🎊 All done!"