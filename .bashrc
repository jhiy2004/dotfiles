#
# ~/.bashrc
#

. ~/.profile
. ~/git-completion.bash
. ~/git-prompt.sh

#PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")';

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\033[0;32m\u@\h$\033[0m \033[;34m\w\033[0m\033[0;33m$(__git_ps1 " (%s)")\033[0m\n\\$'

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
ENDCOLOR='\033[0m'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias py=python3

source '/home/joseyamaoki/.bash_completions/setup.py.sh'
