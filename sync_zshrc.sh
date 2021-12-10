#!/bin/zsh
fswatch -o $HOME/.zshrc $HOME/.oh-my-zsh/ | xargs -n1 -I{} echo "file changed"