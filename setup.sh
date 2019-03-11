#!/bin/bash

echo "Linking up the dotfiles to your home directory ($HOME)"

cd ~/.dotfiles
stow tmux
stow vim

# joplin
ln -s -f ~/.dotfiles/joplin/keymap.json ~/.config/joplin/keymap.json

cd ~

echo "DONE!"

