from libqtile import bar
from libqtile.config import Screen
from .widgets import status_bar_widgets


def status_bar(widgets):
    return bar.Bar(widgets, 24)


screens = [
        Screen(top=status_bar(status_bar_widgets)),
        Screen(bottom=status_bar(status_bar_widgets), width=100),
]
