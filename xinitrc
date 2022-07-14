~/.fehbg &
dunst &
compton -b &

# setting up the keyboard
setxkbmap -model pc104 -layout us,ara  -option grp:alt_shift_toggle

# idk what is this, something i found on the web about "setting the DPI".
 xrandr --fbmm $(xrandr | awk '/\sconnected\s/ {gsub("mm","");print $13$14$15}')

#Switch capslock and esc
/usr/bin/setxkbmap -option "caps:swapescape"


xrdb ~/.Xresources
exec i3 
