-- keybinds

-- call vars
local v = require("configs/vars") -- gets the var.lua table of vars

-- main
hl.bind("SUPER + Q", hl.dsp.exec_cmd(v.term))
hl.bind("SUPER + B", hl.dsp.exec_cmd(v.browser))
hl.bind("SUPER + E", hl.dsp.exec_cmd(v.filemngr))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(v.menu))
-- apps
hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"))
-- commands
hl.bind("SUPER + C", hl.dsp.window.close())
-- windowrule
-- hl.bind(v.mainmod .. " + ", hl.dsp.exec_cmd())
