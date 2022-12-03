~/.fehbg &
dunst &
compton -b &

# setting up the keyboard
setxkbmap -model pc104 -layout us,ara  -option "caps:swapescape,grp:alt_shift_toggle"

if [ -e $HOME/scripts/keyboard];then
   $HOME/scripts/keyboard & 
fi

# idk what is this, something i found on the web about "setting the DPI".
 xrandr --fbmm $(xrandr | awk '/\sconnected\s/ {gsub("mm","");print $13$14$15}')



xrdb ~/.Xresources
exec i3 
#exec qtile start

