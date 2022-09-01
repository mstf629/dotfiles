#!/bin/sh
alias ..='cd ..'
alias 2..='cd ../..'
alias 3..='cd ../../..' 
alias 4..='cd ../../../..'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'

alias free='free -h'
alias cp='cp -v'
alias df='df -h'
alias du='du -h --block-size=M'
alias grep='grep --color=auto'

alias lss='exa -l --color=auto --group-directories-first --icons'
alias lssa='exa -l -a --color=auto --group-directories-first --icons'
alias startx='startx &> /dev/null'
alias wget="wget --no-hsts"

alias arup='arduino-cli upload -b arduino:avr:uno -p /dev/ttyACM0 '
alias arco='arduino-cli compile -b arduino:avr:uno '
