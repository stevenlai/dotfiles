 #!/usr/bin/env bash

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
