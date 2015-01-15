alias ll='ls -lahG'
alias ls='ls -G'
alias vi='mvim -v'
alias tmux='tmux -2'
alias h='heroku'

# export GIT_PS1_SHOWCOLORHINTS=1
# export GIT_PS1_SHOWDIRTYSTATE=1
# source ~/.git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \[$(tput setaf 4)\]\[\e[00;37m\]\w\[\e[0m\]\[$(tput setaf 2)\]]\[$(tput setaf 2)\]\n\\$ \[$(tput sgr0)\]"

export GOPATH="$HOME/go"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

source /usr/local/etc/bash_completion.d/todo_completion
alias t='/usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d ~/.todo.cfg'
export PATH="$PATH:$HOME/.rvm/bin"
source ~/.profile

