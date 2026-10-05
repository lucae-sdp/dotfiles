 -- ------------- --
 -- look and feel --
 -- ------------- --
 
 local V = require("themes/theme")
 

 hl.config({

	 general = {

		 gaps_in = 5,
		 gaps_out = 12,
		 border_size = 3,

		 layout = "dwindle",
		 allow_tearing = false,

		 col = {
			 active_border = V.aborder,
			 inactive_border = V.iborder,
		 }

	 },

	 dwindle = {
		 preserve_split = true
	 },

	 decoration = {

		 rounding = 2,
		 rounding_power = 5,

		 active_opacity = 1,
		 inactive_opacity = 1,

		 shadow = {
			 enabled = false,
		 },
	 },


 })


