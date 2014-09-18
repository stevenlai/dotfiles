 #!/usr/bin/env bash

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

CWD=$(pwd)
for c in .bash_profile .tmux.conf .vimrc
do
  if [ -f ~/$c ]; then
    rm -rf ~/$c
  fi
done


ln -s $CWD/.bash_profile ~/.bash_profile
ln -s $CWD/.tmux.conf ~/.tmux.conf
ln -s $CWD/.vimrc ~/.vimrc
