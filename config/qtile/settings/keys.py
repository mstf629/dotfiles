from libqtile.command import lazy
from libqtile.config import Key, KeyChord
from .theme import colors
from .groups import *

mod = "mod4"
terminal = 'alacritty'
dmenu = f'dmenu_run -i  -l 5 -p "run:" -sb {colors[1][1]}'
i3lock = "i3lock -c 080808"

keys = [
    #       =====================windows-keys=====================
    Key([mod], "h", lazy.layout.left()),   # Move focus to left
    Key([mod], "l", lazy.layout.right()),  # Move focus to right
    Key([mod], "j", lazy.layout.down()),   # Move focus down
    Key([mod], "k", lazy.layout.up()),     # Move focus up

    # Move window to the left, right, up, down
    Key([mod, "shift"], "h", lazy.layout.shuffle_left()),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right()),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up()),

    # Grow window to the left, right, up, down
    Key([mod, "control"], "h", lazy.layout.grow_left()),
    Key([mod, "control"], "l", lazy.layout.grow_right()),
    Key([mod, "control"], "j", lazy.layout.grow_down()),
    Key([mod, "control"], "k", lazy.layout.grow_up()),


    # Reset all window sizes
    Key([mod], "n", lazy.layout.normalize()),

    # Toggle between split and unsplit sides of stack
    Key([mod, "shift"], "Return", lazy.layout.toggle_split()),

    # Kill focused window
    Key([mod], "Escape", lazy.window.kill()),  # Kill focused window
    Key([mod], "f", lazy.window.toggle_fullscreen()),  # fullscreen


    # Make focuced window floatinf
    Key([mod], "t", lazy.window.toggle_floating()),
    Key([mod], "b", lazy.hide_show_bar()),
    # =====================groups-keys=====================
    Key([mod], "u", lazy.group['terminal'].dropdown_toggle(
        'term')),  # hide and unhide dropdown terminal
    # =====================apps-keys=====================
    Key([mod], "Return", lazy.spawn(terminal)),     # Launch terminal
    Key([mod], "d", lazy.spawn(dmenu)),             # Launch dmenu
    Key([mod], "x", lazy.spawn(i3lock)),            # Lock a screen with i3lock
    Key([mod], "r", lazy.reload_config()),          # Reload the config

    Key([mod], "y", lazy.spawn("vplay")),

    # exit from qtile, shutdown the system and restart the system
    KeyChord([mod], "Delete", [
        Key([], "e", lazy.shutdown()),
        Key([], "r", lazy.spawn("shutdown -r now")),
        Key([], "f", lazy.spawn("shutdown  now")),
        Key([], "l", lazy.spawn(i3lock)),
    ]),
    # =====================hardware=====================
    Key([], "XF86AudioLowerVolume", lazy.spawn(
            "pactl set-sink-volume @DEFAULT_SINK@ -5%"
    )),
    Key([], "XF86AudioRaiseVolume", lazy.spawn(
            "pactl set-sink-volume @DEFAULT_SINK@ +5%"
    )),
    Key([], "XF86AudioMute", lazy.spawn(
            "pactl set-sink-mute @DEFAULT_SINK@ toggle"
    )),
    Key([], "XF86MonBrightnessUp", lazy.spawn(
            "light-set inc 5%"
    )),
    Key([], "XF86MonBrightnessDown", lazy.spawn(
            "light-set dec 5%"
    )),
]
