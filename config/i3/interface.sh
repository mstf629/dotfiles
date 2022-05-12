nmcli device show wlo1 | awk -F": *" 'NR==6{print $NF} NR==8{print $NF}'
