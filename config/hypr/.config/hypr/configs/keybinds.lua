-- keybinds

-- call vars
local v = require("configs/vars") -- gets the var.lua table of vars

-- main
hl.bind(v.mainmod .. " + Q", hl.dsp.exec_cmd(v.term))
hl.bind(v.mainmod .. " + B", hl.dsp.exec_cmd(v.browser))
hl.bind(v.mainmod .. " + E", hl.dsp.exec_cmd(v.filemngr))
hl.bind(v.mainmod .. " + SPACE", hl.dsp.exec_cmd(v.menu))
-- apps
hl.bind(v.mainmod .. " + O", hl.dsp.exec_cmd("obsidian"))
-- commands
hl.bind(v.mainmod .. " + C", hl.dsp.window.close())
-- windowrule
hl.bind(v.mainmod .. " + ", hl.dsp.exec_cmd())
