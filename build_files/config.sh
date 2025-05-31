#!/bin/bash
set -ouex pipefail

DOTFILES_DIR="$HOME/dotfiles_repo" # A more specific name

# Check if the dotfiles repo directory exists, if so, pull updates
if [ -d "$DOTFILES_DIR" ]; then
    echo "Dotfiles repository already exists. Pulling updates..."
    cd "$DOTFILES_DIR"
    git pull
else
    # Otherwise, clone it
    echo "Cloning Dotfiles repository to $DOTFILES_DIR..."
    git clone https://github.com/kingro27/Dotfiles.git "$DOTFILES_DIR"
    cd "$DOTFILES_DIR"
fi

touch packman
