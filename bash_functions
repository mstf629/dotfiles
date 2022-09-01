#!/bin/bash
internet() {
    ping -q 1.1.1.1 -c 3 -w 3 &> /dev/null && echo "yup." || ( echo "nah." ; exit 1 ) 
}
#-----------------------------------------------------------------
ansic() {
    local width=$((COLUMNS / 8))
    for x in  0 1; do for i in {0..7}; do printf "\e[48;5;$((i+x*8))m%${width}d\e[0m" $((i+x*8));done;echo;done
}
#-----------------------------------------------------------------
