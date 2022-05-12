#!/bin/bash
internet() {
    ping -q 1.1.1.1 -c 3 -w 3 &> /dev/null && echo "yup." || ( echo "nah." ; exit 1 ) 
}

update_repos() {
    local currentdir=`pwd`
    clear
    for repo in $HOME/{dotfiles,Scripts,github/qutebrowser}; do { 
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

ansic() {
    local width=$((COLUMNS / 8))
    for x in  0 1; do for i in {0..7}; do printf "\e[48;5;$((i+x*8))m%${width}d\e[0m" $((i+x*8));done;echo;done
}

# using vim as a PAGER --> https://vim.fandom.com/wiki/Using_vim_as_a_man-page_viewer_under_Unix
vman() { [[ $# -gt 0 ]] && /usr/bin/man $* | col -b | vim -c 'set ft=man nomod nolist nonumber norelativenumber' -; }




