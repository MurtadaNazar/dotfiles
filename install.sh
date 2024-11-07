#!/bin/bash

# Install Stow if it's not installed
if ! command -v stow &> /dev/null
then
    echo "Stow is not installed. Installing Stow..."
    sudo pacman -S stow --noconfirm
else
    echo "Stow is already installed."
fi

# Apply the dotfiles using Stow
echo "Stowing dotfiles..."
stow zsh
stow starship
stow tmux
stow nvim
stow neofetch
echo "Dotfiles have been successfully stowed!"

