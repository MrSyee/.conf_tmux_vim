#!/bin/bash

echo "Install apt-get install package."

sudo apt-get -y  install \
    stow \
    git \
    tree \
    vim \
    tmux \
	xclip \
	make \
	gcc \
	net-tools\

# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh -s

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

echo "DONE !"

