from libqtile import widget
from .theme import colors #import the list contains the colors

def base(fg='#ffffff',bg='#000000'):
    return dict(
                font='sans',
                fontsize=12,
                background=bg,
                foreground=fg,
            )

def sep():
    return widget.Sep(**base(fg=colors[1][1]),)

def workspace():
    return [
            sep(),
            widget.GroupBox(
                **base(),
                margin_x=3,
                padding_x=3,
                borderwidth=2,
                active='#ffffff',
                this_current_screen_border=colors[1][1],
            ),
            sep(),
    ]
           
#def
status_bar_widget = [
           *workspace(),
           widget.CheckUpdates(),
           sep(),
           widget.Clock(),
           sep(),
           #widget.Cmus(),
           widget.CryptoTicker(),
]





