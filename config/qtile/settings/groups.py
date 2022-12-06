#!/usr/bin/env python

from libqtile.config import Group ,Match ,ScratchPad,DropDown
from libqtile.command import lazy
from .keys import *

groups = [
        Group("1:Terminal",layout="TreeTap"),
        Group("2:Browser",matches=[Match(wm_class=['firefox','qutebrowser'],role='browser')]),
        Group("3:Doc", matches=[Match(wm_class=['Zathura'])], layout="TreeTap"),
        Group("4:Media",matches=[Match(wm_class=['Sxiv','mpv'])]), 
        Group("5:Emulater",matches=[Match(wm_class=['PPSSPPSDL'])]),
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
        )  #make dropdown term 
]

for i,group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend(
        [Key([mod], actual_key, lazy.group[group.name].toscreen()), 
         Key([mod, "shift"], actual_key, lazy.window.togroup(group.name, switch_group=True)),
    ])
