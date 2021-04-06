#! /usr/bin/env bash

# e - Exit immediately if command exits with non-zero
# x - Print commands as they're executed
set -ex

if ! dpkg-query -W -f='${Status}' fzf | grep "ok installed"; then
    sudo apt install fzf
fi

if ! dpkg-query -W -f='${Status}' neovim | grep "ok installed"; then
    sudo apt install neovim
fi

if ! dpkg-query -W -f='${Status}' ripgrep | grep "ok installed"; then
    sudo apt install ripgrep
fi

if ! dpkg-query -W -f='${Status}' tig | grep "ok installed"; then
    sudo apt install tig
fi

# Vim setup

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Set up undo history directory
[ ! -f $HOME/tmp/undo ] && mkdir -p $HOME/tmp/undo

# Set up symlink to vimrc
[ ! -f $HOME/.vimrc ] && ln -s $(pwd)/.vimrc ~/.vimrc

# Set up symlink to nvim init
[ ! -f $HOME/.config/nvim/init.vim ] && mkdir -p ~/.config/nvim/ && ln -s $(pwd)/init.vim ~/.config/nvim/init.vim

# Set up symlink to tmux.conf
[ ! -f $HOME/.tmux.conf ] && ln -s $(pwd)/.tmux.conf ~/.tmux.conf

# Set up symlink to bashrc
[ ! -f $HOME/.bashrc ] && ln -s $(pwd)/.bashrc ~/.bashrc

# Set up symlink for bash_profile
[ ! -f $HOME/.bash_profile ] && ln -s $(pwd)/.bash_profile ~/.bash_profile
