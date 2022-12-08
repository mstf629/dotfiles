from libqtile import widget
from .theme import colors

def base(fg='#ffffff', bg='#000000'):
    return dict(
                font='sans',
                fontsize=12,
                background=bg,
                foreground=fg,
            )

def sep():
    return [
            widget.Sep(
                **base(fg=colors[1][1]),
                linewidth=2
            )
    ]

def workspace():
    return [
            *sep(),
            widget.GroupBox(
                **base(),
                highlight_method='line',
                margin_x=3,
                padding_x=3,
                borderwidth=2,
                active='#ffffff',
                this_current_screen_border=colors[1][1],
            ),
    ]
        
def clock():
    return [
            *sep(),
            widget.Clock(
                **base(),
                format='%H:%M %d-%m-%y',
            ),
    ]
def check_updates():
    return [
            *sep(),
            widget.CheckUpdates(
                **base(),
            )
    ]
def btc():
    return [
            *sep(),
            widget.CryptoTicker(**base()),
    ] 

status_bar_widgets = [
           *workspace(),
           *check_updates(),
           *btc(),
           *clock(),
]





