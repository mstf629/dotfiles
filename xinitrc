~/.fehbg &
compton &

#redshift -O 2500 

if [ -e $HOME/scripts/keyboard ];then
   $HOME/scripts/keyboard & 
fi

# idk what is this, something i found on the web about "setting the DPI".
 xrandr --fbmm $(xrandr | awk '/\sconnected\s/ {gsub("mm","");print $13$14$15}')



xrdb ~/.Xresources

#slstatus &

exec i3 
#exec dwm
#exec awesome
#qtile start 

