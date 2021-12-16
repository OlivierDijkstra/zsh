export ZSH="/Users/olivierdijkstra/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH=~/Library/Android/sdk/platform-tools:/Users/olivierdijkstra/.poetry/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin
export PATH="/Library/Java/JavaVirtualMachines/adoptopenjdk-15.jdk/Contents/Home/bin:$PATH"

ZSH_THEME="oli"

plugins=(
    # Utilities
    sudo
    zsh-safe-rm
    zsh-autosuggestions
    safe-paste
    fast-syntax-highlighting
    autojump

    # Git
    git
    git-auto-fetch

    # Whatever
    web-search
)

source $ZSH/oh-my-zsh.sh

alias p="cd ~/Code && ls"
alias c="code ."
alias lg="lazygit"
alias reload="source ~/.zshrc"
alias editscripts="code ~/.oh-my-zsh/custom/scripts"
alias cleanbig="zsh ~/.oh-my-zsh/custom/scripts/clean_big.sh"
alias cleancache="zsh ~/.oh-my-zsh/custom/scripts/clean_cache.sh"
alias cleanbrew="zsh ~/.oh-my-zsh/custom/scripts/clean_homebrew.sh"
alias launchagents="zsh ~/.oh-my-zsh/custom/scripts/launch_agents.sh"
alias backupzsh="zsh ~/.oh-my-zsh/custom/scripts/backup_zsh.sh"

eval $(thefuck --alias)
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

