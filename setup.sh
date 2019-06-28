#!/bin/bash

echo "Linking up the dotfiles to your home directory ($HOME)"

cd ~/.dotfiles
stow tmux
stow vim

cd ~

# tmux config update
tmux source-file ~/.tmux.conf

# vim setting
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
cd ~

# vim clipboard setting
sudo apt -y install vim-gnome
sudo apt -y install xclip

echo "DONE!"

