#!/bin/bash

echo "Linking up the dotfiles to your home directory ($HOME)"

cd ~/.dotfiles
stow tmux
stow vim

cd ~

echo "DONE!"

