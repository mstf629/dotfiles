#!/usr/bin/env python

from libqtile.config import Group ,Match
from libqtile.command import lazy
from .keys import *

#groups = [ Group(i) for i in ['1:Terminal','2:Browser','3:Doc','4:Media','5:Emulater']]
groups = [
        Group("1:Terminal"),
        Group("2:Browser",matches=[Match(wm_class=['firefox'])]),
        Group("3:Doc"),
        Group("4:Media"), 
        Group("5:Emulater"),
        ]

for i,group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend(
        [
            Key([mod], actual_key, lazy.group[group.name].toscreen()), 
            Key([mod, "shift"], actual_key, lazy.window.togroup(group.name, switch_group=True)),
        ]
    )
