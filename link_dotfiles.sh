 #!/usr/bin/env bash

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh

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
