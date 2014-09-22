alias ll='ls -lahG'
alias ls='ls -G'
alias vi='mvim -v'
alias tmux='tmux -2'

export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
source ~/.git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \[$(tput setaf 4)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 2)\] $(__git_ps1 "(%s)") \n\\$ \[$(tput sgr0)\]"
