from libqtile import bar, widget 
from libqtile.config import Screen

widget_defaults = dict(font='sans', fontsize=12, padding=3)

#screens = [Screen(top=bar.Bar([widget.GroupBox(),]))]
screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(),
                widget.Prompt(),
                widget.Sep(),
                widget.Systray(),
                widget.Clock(format="%Y-%m-%d %a %I:%M %p"),
                widget.Sep(),
                widget.Volume(),
                widget.Sep(),
                widget.QuickExit(),
                widget.Sep(),
                widget.Wallpaper(directory='~/wallpaper'),
                widget.Sep(),
            ],
            24,
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
    ),
]

