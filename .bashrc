# ~/.bashrc

############################################
# Global aliases and functions             #
############################################

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Enable programmable completion features 
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

############################################
# User specific aliases and functions      #
############################################

# User vars
export EDITOR="vim"
export JAVA_HOME=$(readlink -f /usr/bin/java | sed 's#bin/java$##')
export GOPATH="$HOME/Code/GO"
export HISTCONTROL=ignoredups

# Set up PATH
PATH=$PATH:~/Code/Scripts:$GOPATH/bin

# set a fancy prompt 
PS1='[\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]]\$ '

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Private info.
if [ -f ~/.bash_private ]; then
    . ~/.bash_private
fi
