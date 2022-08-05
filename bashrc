# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# a cool way to use colors ^_^
# 0 - 15 for colors, and 16 for reset.
color=( '\e[38;5;'{0..15}m '\e[0m')

#export PS1="\[\033[38;5;69m\]\u\[\e[0m\]: \[\e[38;5;216m\]\W\[\e[0m\] \$ "
export PS1="\[${color[1]}\]\u\[\e[0m\]: \[${color[4]}\]\W\[\e[0m\] \$ "

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Functions definitions.
[ -f ~/.bash_functions ] && . ~/.bash_functions

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# these weired things makes man pages somewhat colorful..
#export LESSS_TERMCAP_md=$'\e[38;5;69m'
#export LESS_TERMCAP_me=$'\e[0m'
#export LESS_TERMCAP_us=$'\e[38;5;216m'
#export LESS_TERMCAP_ue=$'\e[0m'
#export LESS_TERMCAP_so=$'\e[48;5;234;38;5;69m'
#export LESS_TERMCAP_se=$'\e[0m' 
#
# variables
export EDITOR="vim"
export LESSHISTFILE="/dev/null"     #lesshst file -_-

[ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && . /usr/share/doc/fzf/examples/key-bindings.bash

#bind '"\C-p": "\C-e\C-u xclip -sel clipboard -i <<"EOF"\n\C-y\nEOF\n\C-y"'
PATH=$PATH:~/.local/bin

cat ~/.cache/wal/sequences
