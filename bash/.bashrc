#!/usr/bin/env bash

export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=20000

export TERM=xterm
export EDITOR=$(which nvim)
export SUDO_EDITOR=$(which nvim)

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.local/bin
export PATH="/home/trobukan/.usagi/bin:$PATH"

export PNPM_HOME="$HOME/.local/share/pnpm"
[[ ":$PATH:" != *":$PNPM_HOME:"* ]] && export PATH="$PNPM_HOME:$PATH"

alias ls='ls --color=auto'
alias vim='nvim'
alias vi='nvim'
alias niri-session='dbus-run-session niri --session'

eval "$(starship init bash)"
eval "$(zoxide init --cmd cd bash)"
