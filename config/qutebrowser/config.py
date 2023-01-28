#===========================content settings===========================

config.set("content.autoplay", True )
config.set("content.canvas_reading", False )
config.set("content.cookies.accept", "no-3rdparty" )
config.set("content.desktop_capture", False )
config.set("content.geolocation", False  )
config.set("content.headers.accept_language", 'en-US,en;q=0.5' )
config.set("content.images", True )
config.set("content.javascript.enabled", True)
config.set("content.javascript.alert", False)
config.set("content.javascript.can_access_clipboard", False )
config.set("content.javascript.can_open_tabs_automatically", False )
config.set("content.local_content_can_access_file_urls", False )
config.set("content.local_content_can_access_remote_urls", False )
config.set("content.media.audio_capture", False )
config.set("content.media.video_capture", False )
config.set("content.media.audio_video_capture", False )
config.set("content.media.video_capture", False )
config.set("content.mouse_lock", False )
config.set("content.notifications.enabled", False )
config.set("content.notifications.show_origin", True )
config.set("content.proxy", "socks5://localhost:9050/" )

#=========================download settings============================

config.set("downloads.location.prompt", True)
config.set("downloads.location.remember", True)

#=========================hints settings===============================

config.set("hints.auto_follow", "unique-match")
config.set("hints.auto_follow_timeout", 5000)
config.set("hints.chars", "asdfjkl;")
config.set("hints.leave_on_load", True)
config.set("hints.mode", "letter")
config.set("hints.radius", 2)
config.set("hints.padding", {"bottom":0, "top":0, "left":2, "right":2 })

#========================scrolling settings===========================
config.set("scrolling.bar", "never")

#========================tabas settings===============================

config.set("tabs.background", False)
config.set("tabs.close_mouse_button", "none")
config.set("tabs.close_mouse_button_on_bar", "ignore")
config.set("tabs.last_close", "ignore")
config.set("tabs.mode_on_change", "normal")
config.set("tabs.mousewheel_switching", False)
config.set("tabs.new_position.unrelated", "last")
config.set("tabs.select_on_remove", "last-used")
config.set("tabs.show", "always")
config.set("tabs.tabs_are_windows", False)
config.set("tabs.title.alignment", "left")

#========================url settings=================================

config.set("url.default_page", "http://localhost:8080/")
config.set("url.searchengines", {"DEFAULT": "http://localhost:8080/?q={}"})

#========================
#aliases 
config.load_autoconfig(True)
c.auto_save.session = True




