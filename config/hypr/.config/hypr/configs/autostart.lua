 -- --------- --
 -- autostart --
 -- --------- --

 hl.on("hyprland.start", function ()
	 hl.exec_cmd("uwsm app -- waybar")
	 hl.exec_cmd("uwsm app -- hyprpaper -c ~/.config/hypr/ecosystem/hyprpaper.conf")
	 hl.exec_cmd("uwsm app -- udiskie")
	 hl.exec_cmd("uwsm app -- hypridle")
 end)

