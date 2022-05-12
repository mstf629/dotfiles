#/bin/sh

case $BLOCK_BUTTON in
    1) nm-connection-editor;;
esac

ethernet=$(ls /sys/class/net | egrep "eno.|eth.|wlo.|wlan.")
#wifi=$(ls /sys/class/net | egrep "wlo.|wlan.")

for eth_device in ${ethernet}
do
    #output="$output $(nmcli -g general.type,IP4.address device show $eth_device)"
    
done

#for wifi_devices in ${wifi}
#do
#    output="$output $(nmcli -g general.type,AP.ssid,IP4.address device show $wifi_devices)"
#done




echo $output


