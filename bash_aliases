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
alias startx='startx &> /dev/null'
alias cc='file=$(find $HOME/dotfiles/* -not -path "*.git*" -type f | fzf) && vi $file ; unset file'
[ -d $HOME/Scripts ] && alias SS='file=$(find $HOME/Scripts ! -path "*.git*" -type f | fzf) && vi $file ; unset file'
# neomutt always miss up wal colors..
#[ -f "$HOME/.cache/wal/sequences" ] && alias neomutt=' (sleep 0.100 ; cat ~/.cache/wal/sequences) & neomutt'
alias neomutt='TERM=screen-256color neomutt'
alias wget="wget --no-hsts"
