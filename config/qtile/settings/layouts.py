from libqtile import layout
from .theme import colors

layouts_defaults = dict(
    border_width=2,
    border_focus=colors[1][1],
    border_on_single=True,
    border_normal=colors[0][1],
)
floating_layout_defaults = layouts_defaults.copy()
floating_layout_defaults['border_width'] = 1

layouts = [
    layout.Columns(**layouts_defaults, margin=[6, 6, 6, 4], insert_position=4),
    layout.TreeTab(active_bg=colors[1][1],),
    layout.Max(**layouts_defaults, margin=[3, 0, 0, 0]),
]

floating_layout = layout.Floating(auto_float_typesR=[
    {'wmclass': 'mpv'},
], **floating_layout_defaults)
