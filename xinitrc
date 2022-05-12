~/.fehbg &
dunst &
compton -b &

# setting up the keyboard
{ [ -f "$HOME/Scripts/keyboard_set" ] && $HOME/Scripts/keyboard_set ; } &

# idk what is this, something i found on the web about "setting the DPI".
 xrandr --fbmm $(xrandr | awk '/\sconnected\s/ {gsub("mm","");print $13$14$15}')

xrdb ~/.Xresources
exec i3 
