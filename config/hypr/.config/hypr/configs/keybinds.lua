 -- -------- --
 -- keybinds --
 -- -------- --
 
 -- all hyprlnd keybinds

 
 -- --------- --
 -- call vars --
 -- --------- --
 
 local v = require("configs/vars") -- gets the var.lua table of vars


 -- ------------- --
 -- main keybinds --
 -- ------------- --

 hl.bind("SUPER + ESCAPE", hl.dsp.exec_cmd("uwsm stop"))
 hl.bind("SUPER + Q", hl.dsp.exec_cmd(v.term))
 hl.bind("SUPER + B", hl.dsp.exec_cmd(v.browser))
 hl.bind("SUPER + E", hl.dsp.exec_cmd(v.filemngr))
 hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(v.menu))
 hl.bind("SUPER + C", hl.dsp.window.close())
 hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))


 -- ---- --
 -- apps --
 -- ---- --

 hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"))
 hl.bind("SUPER + M", hl.dsp.exec_cmd("spotify-launcher"))


 -- ----------- --
 -- printscreen --
 -- ----------- --
 
 hl.bind("SUPER + S", hl.dsp.exec_cmd("grim -g '$(slurp)' "))


 -- --------- --
 -- workspace --
 -- --------- --

 -- change workspace and move window 1 to 9
 for i = 1, 9 do
	 hl.bind("SUPER + " .. i, hl.dsp.focus({workspace = i}))
	 hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({workspace = i}))
 end

 -- move window focus
 hl.bind("SUPER + left", hl.dsp.focus({direction = "left"}))
 hl.bind("SUPER + right", hl.dsp.focus({direction = "right"}))
 hl.bind("SUPER + up", hl.dsp.focus({direction = "up"}))
 hl.bind("SUPER + down", hl.dsp.focus({direction = "down"}))

 -- mouse binds drag and resize
 hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), {mouse = true})
 hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), {mouse = true})

 -- toggle fullscreen
 hl.bind("SUPER + F", hl.dsp.window.fullscreen({mode = "maximized", action = "toggle"}))
 hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"}))


 -- ------------ --
 -- laptop binds --
 -- ------------ --
 
 -- volume 
 hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), {locked = true, repeating = true})
 hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), {locked = true, repeating = true})
 hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), {locked = true, repeating = true})
 
 -- brightness 
 hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), {locked = true, repeating = true})
 hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), {locked = true, repeating = true})

 -- player
 hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), {locked = true})
 hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), {locked = true})
 hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), {locked = true})
 hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), {locked = true})

