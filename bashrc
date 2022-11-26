[ -z "$PS1" ] && return
#--------------------  variables  ----------------------------------
export EDITOR="vim"

# 0 - 15 for colors, and 16 for reset.
Co=( '\033[3'{0..7}m '\033[1;3'{0..7}m '\033[0m' )

PS1="\[${Co[10]}\]\w \[${Co[11]}\]➜\[${Co[16]}\] "
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

#--------------------  Aliases  -------------------------------------
#cd
alias dl='cd $HOME/Downloads/'
alias ..='cd ..' 
#cp rm du
alias cp='cp -v'
alias rm='rm -v'
alias du='dust -r -p '
#free df
alias free='free -h'
alias df='df -h ' 
#ls
alias ls='exa --color=auto' 
alias lss='exa -l --color=auto --group-directories-first' 
alias lssa='exa -la --color=auto --group-directories-first' 
#grep pacman ip color
alias ip="ip --color=auto"
alias pacman='pacman --color=auto' #set color for pacman
alias grep='grep --color=auto' 
#move some output to null partition 
alias startx='startx 1> /dev/null' #move all output to null partition 
alias mpv='mpv >/dev/null' 
alias neomutt='TERM=screen-256color neomutt'

#--------------------  Functions  -----------------------------------
_ps1() {
    local branch="$(git branch --show-current 2>/dev/null)"
    PS1="\[${Co[12]}\]\w \[${Co[13]}\]${branch} \[${Co[11]}\]➜\[${Co[16]}\] "
}; PROMPT_COMMAND="_ps1"

#---------------------  Bash Options  ------------------------------

# testing vi mode 
set -o vi
# related to using ** in pathname Expansion
shopt -s globstar

shopt -s histappend

#------------------------------------------------------------------

if command -v dircolors > /dev/null 2>&1; then
    if [[ -r $HOME/.config/dircolors ]]; then
        eval "$(dircolors -b "$HOME/.config/dircolors")"
    fi
fi

