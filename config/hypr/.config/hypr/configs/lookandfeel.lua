 -- ------------- --
 -- look and feel --
 -- ------------- --
 
 local V = require("themes/theme")
 

 hl.config({

	 general = {

		 gaps_in = 5,
		 gaps_out = 12,
		 border_size = 2,

		 col = {
			 active_border = V.aborder,
			 inactive_border = V.iborder,
		 }

	 },

	 dwindle = {
		 preserve_split = true
	 },
 })


