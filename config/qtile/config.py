from settings.screens  import screens
from settings.groups   import groups 
from settings.keys     import keys 
from settings.mouse    import mouse 
from settings.layouts  import layouts,floating_layout 

main=None
dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = False
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wl_input_rules = None
wmname = "LG3D"
