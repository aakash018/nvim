return {
	"RRethy/vim-illuminate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		local illuminate = require("illuminate")
		illuminate.configure()
	end,
}
