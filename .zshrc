
fastfetch
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="clean"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# | > USER CONFIG < |
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias update="sudo dnf update -y && sudo dnf upgrade -y"
alias ls="ls --color=auto"
alias la="ls -lah"

# > | NAVIGATION | <
alias ..="cd .."
alias ...="cd ../.."

# > | GIT CONFIGS | <
alias gst="git status"
alias gco="git checkout"
alias gcm="git commit -m"
alias gp="git push"
alias gl="git pull"

alias PATH="$PATH:$HOME/go/bin"
alias PGK_CONFIG_PATH="/usr/lib64/pkgconfig:$PGK_CONFIG_PATH"
