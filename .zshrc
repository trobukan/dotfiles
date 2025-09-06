ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"
fastfetch

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias vim="nvim"
alias zshconf="vim ~/.zshrc"

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
