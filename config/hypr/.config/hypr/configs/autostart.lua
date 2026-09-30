 -- --------- --
 -- autostart --
 -- --------- --
 
 local v = require("configs/vars")

 hl.on("hyprland.start", function ()
	 hl.exec_cmd("dbus-update-activation-environment --sys")
	 hl.exec_cmd("waybar & hyprpaper")
 end)

