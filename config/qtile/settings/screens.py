from libqtile import bar
from libqtile.config import Screen
from .widget import status_bar_widget #import the list contains widget of status bar

def status_bar(widgets):
    return bar.Bar(widgets,24)

screens = [
        Screen(top=status_bar(status_bar_widget)),
]

