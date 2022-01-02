
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
export ZSH="/Users/olivierdijkstra/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH=~/Library/Android/sdk/platform-tools:/Users/olivierdijkstra/.poetry/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin
export PATH="/Library/Java/JavaVirtualMachines/adoptopenjdk-15.jdk/Contents/Home/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

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
ZSH_THEME=""

autoload -U promptinit; promptinit
prompt pure

zstyle :prompt:pure:path color '#fe0078'
zstyle :prompt:pure:git:branch color '#888888'
zstyle :prompt:pure:git:arrow color '#0076ff'

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
alias backuphomebrew="zsh ~/.oh-my-zsh/custom/scripts/backup_homebrew.sh"

eval $(thefuck --alias)

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
