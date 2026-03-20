#!/usr/bin/env bash

export HISTCONTROL=ignoreboth
shopt -s histappend
export HISTSIZE=10000
export HISTFILESIZE=20000

export TERM=kitty
export BROWSER=zen-browser
export EDITOR=$(which nvim)
export SUDO_EDITOR=$(which nvim)

export PATH=$PATH:$HOME/.cargo/bin:$HOME/go/bin:$HOME/.local/bin
export PNPM_HOME="$HOME/.local/share/pnpm"
[[ ":$PATH:" != *":$PNPM_HOME:"* ]] && export PATH="$PNPM_HOME:$PATH"

alias ls='ls --color=auto'
alias vim='nvim'
alias v='nvim'
alias rmpkg="sudo pacman -Rsn"
alias cleanch="sudo pacman -Scc"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias update="sudo pacman -Syu"

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

eval "$(zoxide init --cmd cd bash)"
eval "$(starship init bash)"
