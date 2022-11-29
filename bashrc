[ -z "$PS1" ] && return
#==========VARIABLEs==========
#set vim default editor
export EDITOR="vim"
#history settings
export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=5000

#prompt settings
# 0 - 15 for colors, and 16 for reset.
Co=( '\033[3'{0..7}m '\033[1;3'{0..7}m '\033[0m' )
PS1="\[${Co[4]}\][\e \[${Co[16]}\]\t\e \[${Co[4]}\]]\e \[${Co[3]}\]➜ \[${Co[4]}\]\w \[${Co[1]}\]$ \[${Co[16]}\]"

#==========BASH-OPTIONS==========
#testing vi mode 
set -o vi
#make cd better
shopt -s cdspell
#display update
shopt -s checkwinsize
#==========ALIASES==========
#cd
#cd,cp,rm,du free stuff
alias dl='cd $HOME/Downloads/'
alias ..='cd ..' 
alias cp='cp -v'
alias rm='rm -v'
alias du='dust -r -p '
#free df
alias free='free -h'
alias df='df -h ' 
#ls stuff
alias ls='exa --color=auto' 
alias lss='exa -l --color=auto --group-directories-first' 
alias lssa='exa -la --color=auto --group-directories-first' 
#grep pacman ip color
alias ip="ip --color=auto"
alias pacman='pacman --color=auto' #set color for pacman
alias grep='grep --color=auto' 
#move some output to null partition 
alias startx='startx 2> /dev/null' #move all output to null partition 
alias mpv='mpv >/dev/null' 
alias neomutt='TERM=screen-256color neomutt'
#==========FUNCTIONS==========
_ps1() {
    local branch="$(git branch --show-current 2>/dev/null)"
    PS1="\[${Co[4]}\][\e \[${Co[16]}\]\t\e \[${Co[4]}\]]\e \[${Co[3]}\]➜ \[${Co[4]}\]\w \[${Co[1]}\]${branch}\[${Co[1]}\]$ \[${Co[16]}\]"
}; PROMPT_COMMAND="_ps1"
