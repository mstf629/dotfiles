#!/usr/bin/env python

from libqtile.config import Group, Match, ScratchPad, DropDown, Key
from libqtile.command import lazy
from .keys import keys, mod, terminal

groups = [
    Group(" Terminal",),
    Group(" Browser",
          matches=[Match(wm_class=["firefox", "brave-browser", "qutebrowser",])]),

    Group("noc", matches=[Match(wm_class=['Zathura'])]),

    Group(" Media",
          matches=[Match(wm_class=['Sxiv', 'mpv'])],
          layout="treetab"),

    Group(" games", 
          matches=[Match(wm_class=['PPSSPPSDL'])]),

    ScratchPad(
        "terminal",
        [DropDown(
            "term",
            terminal,
            opacity=0.9,
            width=0.56,
            height=0.46,
            x=0.22,
            y=0.27,
        )]
    )  # make dropdown term
]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend(
        [Key([mod], actual_key, lazy.group[group.name].toscreen()),
         Key([mod, "shift"], actual_key, lazy.window.togroup(
             group.name, switch_group=True)),
         ])
