 -- -------- --
 -- monitors --
 -- -------- --

 -- main monitor
 hl.monitor({
	 output = "eDP-1",
	 mode = "1920x1080@120",
	 position = "0x0",
	 scale = "1",
 })

 -- not specified monitors
 hl.monitor({
	 output = "",
	 mode = "preferred",
	 position = "auto",
	 scale = "1",
 })
