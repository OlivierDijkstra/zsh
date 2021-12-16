#!/bin/zsh
echo "⏱️ Time to upgrade and clean your system, this may take a while..."
echo "🚀 Upgrading files and homebrew packages..."
zsh ~/.oh-my-zsh/custom/scripts/clean_homebrew.sh
softwareupdate --all --install --force
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
zsh ~/.oh-my-zsh/custom/scripts/launch_agents.sh
zsh ~/.oh-my-zsh/custom/scripts/clean_cache.sh

echo "🎊 All done!"