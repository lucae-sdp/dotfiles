 -- --------- --
 -- autostart --
 -- --------- --

 hl.on("hyprland.start", function ()
	 hl.exec_cmd("waybar")
	 hl.exec_cmd("hyprpaper -c ~/.config/hypr/ecosystem/hyprpaper.conf")
	 hl.exec_cmd("udiskie")
	 hl.exec_cmd("hypridle")
 end)

