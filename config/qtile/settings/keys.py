from libqtile.command import lazy 
from libqtile.config import Key ,KeyChord
from .groups import *

mod = "mod4"
terminal = 'xfce4-terminal'
dmenu = "dmenu_run  -l 5 -p 'run:' "
i3lock = "i3lock -c 080808"

keys = [
#       =====================windows-keys=====================
        Key([mod], "h", lazy.layout.left()),   #Move focus to left
        Key([mod], "l", lazy.layout.right()),  #Move focus to right
        Key([mod], "j", lazy.layout.down()),   #Move focus down
        Key([mod], "k", lazy.layout.up()),     #Move focus up

        Key([mod, "shift"], "h", lazy.layout.shuffle_left()),  #Move window to the left
        Key([mod, "shift"], "l", lazy.layout.shuffle_right()), #Move window to the right
        Key([mod, "shift"], "j", lazy.layout.shuffle_down()),  #Move window down
        Key([mod, "shift"], "k", lazy.layout.shuffle_up()),    #Move window up

        Key([mod, "control"], "h", lazy.layout.grow_left()),   #Grow window to the left
        Key([mod, "control"], "l", lazy.layout.grow_right()),  #Grow window to the right
        Key([mod, "control"], "j", lazy.layout.grow_down()),   #Grow window down
        Key([mod, "control"], "k", lazy.layout.grow_up()),     #Grow window up

        Key([mod, "mod1"], "j", lazy.layout.flip_down()),
        Key([mod, "mod1"], "k", lazy.layout.flip_up()),
        Key([mod, "mod1"], "h", lazy.layout.flip_left()),
        Key([mod, "mod1"], "l", lazy.layout.flip_right()),
        
        Key([mod], "n", lazy.layout.normalize()),              #Reset all window sizes
        Key([mod, "shift"], "Return", lazy.layout.toggle_split()), #"Toggle between split and unsplit sides of stack

        Key([mod], "Escape", lazy.window.kill()),              #Kill focused window
        Key([mod], "f", lazy.window.toggle_fullscreen()),      #fullscreen
        Key([mod], "t", lazy.window.toggle_floating()),        #Make focuced window floatinf
#       =====================groups-keys=====================
        Key([mod], "u", lazy.group['terminal'].dropdown_toggle('term')), #hide and unhide dropdown terminal
#       =====================apps-keys=====================
        Key([mod], "Return", lazy.spawn(terminal)),     #Launch terminal
        Key([mod], "d", lazy.spawn(dmenu)),             #Launch dmenu 
        Key([mod], "x", lazy.spawn(i3lock)),            #Lock a screen with i3lock
        Key([mod], "r", lazy.reload_config()),          #Reload the config

        KeyChord([mod], "Delete",[ #exit from qtile, shutdown the system and restart the system 
            Key([], "e", lazy.shutdown()),
            Key([], "r", lazy.spawn("shutdown -r now")),
            Key([], "f", lazy.spawn("shutdown  now")),
            Key([], "l", lazy.spawn(i3lock)),
        ]),
#       =====================hardware=====================
        Key([], "XF86AudioLowerVolume", lazy.spawn(
            "pactl set-sink-volume @DEFAULT_SINK@ -5%"
        )),
        Key([], "XF86AudioRaiseVolume", lazy.spawn(
            "pactl set-sink-volume @DEFAULT_SINK@ +5%"
        )),
        Key([], "XF86AudioMute", lazy.spawn(
            "pactl set-sink-mute @DEFAULT_SINK@ toggle"
        )),
        Key([], "XF86MonBrightnessUp" ,lazy.spawn(
            "light-set inc 5%"
        )),
        Key([], "XF86MonBrightnessDown" ,lazy.spawn(
            "light-set dec 5%"
        )),
]

