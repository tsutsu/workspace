# shell history
export HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000

# shell behavior
shopt -s checkwinsize
shopt -s globstar

# tools
export PAGER='less -F'
export EDITOR='vi'

# flair
export PS1='\[\033[32m\]\u@\h\[\033[m\]${DOCKER_MACHINE_NAME:+ \[\033[34m\]*$DOCKER_MACHINE_NAME\[\033[m\]}:\[\033[34;1m\]\w\[\033[m\]\n\$ '
alias ls='ls -h -k -X --color=auto --group-directories-first'
alias grep='grep -E --color=auto'

if [ "$TERM" = "screen" ]; then
  export TERM='screen-256color'
else
  export TERM='xterm-256color'
fi

eval $(dircolors -b ~/.dircolors)

source /etc/bash_completion
