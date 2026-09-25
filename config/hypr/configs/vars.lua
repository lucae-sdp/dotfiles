-- shared vars module
local M = {} --M from module, empty table.

M.mainmod = "SUPER" -- "windows" key setted as mainmod
M.term = "kitty" -- kitty terminal
M.browser = "firefox --new-window about:profilemanager" -- firefox with profile manager opened
M.filemngr = "kitty yazi" -- TUI file explorer
M.menu = "rofi -show run" -- rofi

return M
