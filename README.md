## Dotfiles Setup
These are my personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Requirements
Before using these dotfiles, make sure you have the followings packages installed:
```bash 
sudo dnf install -y git stow
```

## Installation
1. Clone this repository into your `$HOME` directory:
```bash
git clone --recurse-submodules git@github.com:trobukan/dotfiles.git ~/dotfiles
```
2. Change into the dotfiles directory:
```bash
cd ~/dotfiles
```
3. Apply the dotfiles using stow:
```bash
stow . -t ~
```
