from libqtile import layout

layouts_defaults = dict(
        margin = 6,
        border_width = 2,
        border_focus = "#1313db",
        border_on_single = True,
        border_normal ="#220000"
        )
floating_layout_defaults = layouts_defaults.copy()
floating_layout_defaults['border_width'] = 1 

layouts = [
    layout.Columns(**layouts_defaults),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    #layout.Bsp(border_on_single=True, border_width=1, border_focus="#d75f5f"),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]
floating_layout = layout.Floating(auto_float_typesR=[
    {'wmclass':'mpv'},
], **floating_layout_defaults)
