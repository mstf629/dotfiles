#/bin/sh

case $(nmcli net con check) in
    limited) echo "no internet " ;;
    full) echo "online " ;;
    #none) echo "not connected" ;;
esac

#[[ $(nmcli net con) = "full" ]] && \
#    echo "online" ||\
#    echo "offline" 
