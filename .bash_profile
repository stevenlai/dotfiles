alias ll='ls -lahG'
alias ls='ls -G'
alias vi='mvim -v'
alias tmux='tmux -2'

# export GIT_PS1_SHOWCOLORHINTS=1
# export GIT_PS1_SHOWDIRTYSTATE=1
# source ~/.git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \[$(tput setaf 4)\]\[\e[00;37m\]\w\[\e[0m\]\[$(tput setaf 2)\]]\[$(tput setaf 2)\]\n\\$ \[$(tput sgr0)\]"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export GOPATH="$HOME/go"
