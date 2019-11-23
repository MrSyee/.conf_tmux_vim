#!/bin/bash

echo "Linking up the dotfiles to your home directory ($HOME)"

cd ~/.dotfiles
stow tmux
stow vim

cd ~

# git config
git config --global user.name "Kyunghwan Kim"
git config --global user.email khsyee@gmail.com
git config --global core.editor vim

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

# add .bashrc config
cat ~/.dotfiles/.bashrc >> ~/.bashrc
sed -i 's/bobby/powerline-multiline/g' ~/.bashrc
alias brc='source ~/.bashrc'

echo "DONE!"

