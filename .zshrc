# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

export ZSH="/Users/olivierdijkstra/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH=~/Library/Android/sdk/platform-tools:/Users/olivierdijkstra/.poetry/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin
export PATH="/Library/Java/JavaVirtualMachines/adoptopenjdk-15.jdk/Contents/Home/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

plugins=(
    zsh-safe-rm
    fast-syntax-highlighting
    safe-paste
    autojump
    git
    git-auto-fetch
)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

zstyle :prompt:pure:path color '#fe0078'
zstyle :prompt:pure:git:branch color '#888888'
zstyle :prompt:pure:git:arrow color '#0076ff'

alias c="code ."
alias lg="lazygit"
alias editscripts="code ~/.oh-my-zsh/custom/scripts"
alias clean_system="zsh ~/.oh-my-zsh/custom/scripts/clean.sh"
alias backupzsh="zsh ~/.oh-my-zsh/custom/scripts/backup_zsh.sh"
alias backuphomebrew="zsh ~/.oh-my-zsh/custom/scripts/backup_homebrew.sh"

eval $(thefuck --alias)

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"
