 -- ----- --
 -- input --
 -- ----- --
 
 hl.config({

	 input = {

		 kb_layout = "br",
		 numlock_by_default = true,
		 follow_mouse = 2,

	 }


 })

 hl.gesture ({fingers = 3, direction = "horizontal", action = "workspace"})
 hl.gesture ({fingers = 3, direction = "vertical", action = "resize"})
