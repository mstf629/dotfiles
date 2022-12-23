from libqtile import widget
from .theme import colors
import  subprocess

def base(fg='#ffffff', bg='#000000'):
    return dict(
                font='sans',
                fontsize=12,
                background=bg,
                foreground=fg,
            )

def sep():
    return widget.Sep(
            **base(fg=colors[1][1]),
            linewidth=2,
            margin=10
           ) 

def workspace():
    return [
            sep(),
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
            sep(),
            widget.Clock(
                **base(),
                format='%H:%M %d-%m-%y',
            ),
    ]
def check_updates():
    return [
            widget.TextBox(),
            widget.CheckUpdates(
                **base(),
            )
    ]
def btc():
    return [
            widget.TextBox(),
            widget.CryptoTicker(**base()),
    ] 
def net():
    return[
            widget.TextBox(),
            widget.Net(),
    ]
def volume():
    return [
            sep(),
            widget.PulseVolume(
                **base(),
            ),
    ]
def wifi():
    return [
            sep(),
            widget.TextBox(text=''),
            widget.GenPollText(
                func=lambda:subprocess.getoutput('~/.config/qtile/settings/scripts/wifi'),
                update_interval=1
                )
    ]
status_bar_widgets = [
           *workspace(),
           widget.Spacer(),
           sep(),
           widget.CurrentLayout(),
           *wifi(),
           *volume(),
           *clock(),
           sep(),
           widget.WidgetBox(widgets=[
                *check_updates(),
                *btc(),
                *net(),
            ]),
           sep(),
]




