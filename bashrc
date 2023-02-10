[ -z "$PS1" ] && return
[ -f "/home/mustafa/.cache/wal/sequences" ] && cat $HOME/.cache/wal/sequences 
#==========VARIABLEs==========
#
#set nvim default editor
export EDITOR="nvim"
export BROWDSER="qutebrowser"

#history settings
export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=5000

export repos="$HOME/repos"
export i3c="$HOME/.config/i3/"
export dotfiles="$repos/dotfiles"

#prompt settings
# 0 - 15 for colors, and 16 for reset.
Co=( '\033[3'{0..7}m '\033[1;3'{0..7}m '\033[0m' )
PROMPT_COMMAND="_ps1"

#==========BASH-OPTIONS==========
#testing vi mode 
set -o vi
#make cd better
shopt -s cdspell
#display update
shopt -s checkwinsize
#==========ALIASES==========
#cd 
alias i3c='cd $i3c'
alias ..='cd ../'
alias dot='cd $dotfiles'
alias dl='cd $HOME/Downloads/'
alias repos='cd $repos'
#cp,rm,du free stuff
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
alias yay='yay --color=auto' #set color for yay 
alias grep='grep --color=auto' 
#move some output to null partition 
alias startx='startx 2> /dev/null' #move all output to null partition 
alias mpv='mpv >/dev/null' 
alias neomutt='TERM=screen-256color neomutt'
#==========FUNCTIONS==========
_check_branch(){
        git branch --show-current 2>/dev/null
}
_ps1() {
        branch=$(_check_branch)
        declare -A _p=(
        [t]="\[${Co[16]}\]\t\[${Co[16]}\]"         # time 
        [u]="\[${Co[11]}\]\u\[${Co[16]}\]"         # user
        [w]="\[${Co[4]}\]\W\[${Co[16]}\]"          # working directory
        [b]="\[${Co[1]}\]${branch}\[${Co[16]}\]"   # git branch
        [d]="\[${Co[1]}\]\$\[${Co[16]}\]"          # $
        [c]="\[${Co[8]}\]:\[${Co[16]}\]"           # :
        [-]="\[${Co[8]}\]-\[${Co[16]}\]"           # -
        [lb]="\[${Co[4]}\][\[${Co[16]}\]"          # [
        [rb]="\[${Co[4]}\]]\[${Co[16]}\]"          # ]
        [lp]="\[${Co[4]}\](\[${Co[16]}\]"          # (
        [rp]="\[${Co[4]}\])\[${Co[16]}\]"          # )
        [at]="\[${Co[4]}\]@\[${Co[16]}\]"          # @
        [ar]="\[${Co[3]}\]➜\[${Co[16]}\]"
        )
        if [[ ! -z ${branch} ]]; then
               PS1="${_p[lb]}${_p[t]}${_p[rb]}${_p[ar]} ${_p[w]} ${_p[lp]}${_p[b]}${_p[rp]}${_p[d]} "
        else
               PS1="${_p[lb]}${_p[t]}${_p[rb]}${_p[ar]} ${_p[w]} ${_p[d]} "
        fi
}

