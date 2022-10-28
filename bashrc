[ -z "$PS1" ] && return
#--------------------  variables  ----------------------------------

export MYREPOS="${HOME}/repos/normanxlly"
export DOTFILES="${MYREPOS}/dotfiles"
export CDPATH=".:${MYREPOS}"
export EDITOR="vim"
export LESSHISTFILE="/dev/null"

# width of man pages.
# export MANWIDTH=79
# 0 - 15 for colors, and 16 for reset.
Co=( '\033[3'{0..7}m '\033[1;3'{0..7}m '\033[0m' )

PS1="\[${Co[10]}\]\w \[${Co[11]}\]➜\[${Co[16]}\] "
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

#--------------------  Aliases  -------------------------------------

alias ..='cd ..'
alias free='free -h'
alias cp='cp -v'
alias df='df -h'
alias du='du -h --block-size=M'
alias grep='grep --color=auto'
#alias lss='exa -l --color=auto --group-directories-first'
alias lss='ls -l --color=auto --group-directories-first'
alias startx='startx &> /dev/null'
alias neomutt='TERM=screen-256color neomutt'
alias wget="wget --no-hsts"
alias ip="ip --color=auto"

#--------------------  Functions  -----------------------------------

update_repos() {
    local currentdir=`pwd`
    clear
    for repo in $HOME/{dotfiles,Scripts,.config/qutebrowser}; do {
        cd $repo;
        echo -e "### $repo ###\n";
        git add . ;
        if git commit -a -m "updating..."; then
            git push;
        fi
        echo -e "------------------------------------------------\n";
    } 
done
cd $currentdir
}

_ps1() {
    local branch="$(git branch --show-current 2>/dev/null)"
    PS1="\[${Co[12]}\]\w \[${Co[13]}\]${branch} \[${Co[11]}\]➜\[${Co[16]}\] "
}; PROMPT_COMMAND="_ps1"

#---------------------  Bash Options  ------------------------------

# testing vi mode 
set -o vi
# related to using ** in pathname Expansion
shopt -s globstar

# files starting with '.' are included in pathname expansion
shopt -s dotglob

shopt -s histappend

#------------------------------------------------------------------

if command -v dircolors > /dev/null 2>&1; then
    if [[ -r $HOME/.config/dircolors ]]; then
        eval "$(dircolors -b "$HOME/.config/dircolors")"
    fi
fi

# fzf
# the directories are not the same on Debian and Arch.
fzfDir="/usr/share/doc/fzf/examples"
if [[ -d $fzfDir ]]; then
    fzfKeys="${fzfDir}/key-bindings.bash"
    fzfComp="${fzfDir}/completion.bash"
else
    fzfDir="/usr/share/fzf"
    if [[ -d $fzfDir ]]; then
        fzfKeys="${fzfDir}/key-bindings.bash"
        fzfComp="${fzfDir}/completion.bash"
    fi
fi
[[ -n ${fzfKeys} ]] && . "$fzfKeys"
[[ -n ${fzfComp} ]] && . "$fzfComp"

#------------------ testing --------------------

