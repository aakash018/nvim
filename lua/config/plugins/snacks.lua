return {
	"folke/snacks.nvim",
	lazy = false,
	priority = 10000,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		picker = {
			enabled = true,
			matcher = {
				frecency = true,
			},
		},
		bigfile = { enabled = true },
		input = { enabled = true },
		indent = {
			enabled = true,
			animate = { enabled = false },
			indent = { only_scope = true },
			chunk = { enabled = true },
		},
		image = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		explorer = { enabled = true },
	},

	keys = {
		{
			"<leader>sf",
			function()
				Snacks.picker.files()
			end,
		},
		{
			"<leader>sa",
			function()
				Snacks.picker.files({ hidden = true })
			end,
		},
		{
			"<leader>sg",
			function()
				Snacks.picker.grep()
			end,
		},
		{
			"<leader><leader>",
			function()
				Snacks.picker.buffers()
			end,
		},
		{
			"<leader>fs",
			function()
				Snacks.picker.smart()
			end,
		},
		{
			"<leader>sc",
			function()
				Snacks.picker.colorschemes()
			end,
		},
		{
			"\\",
			function()
				if Snacks.picker.get({ source = "explorer" })[1] == nil then
					Snacks.picker.explorer()
				elseif Snacks.picker.get({ source = "explorer" })[1]:is_focused() == true then
					Snacks.picker.explorer()
				elseif Snacks.picker.get({ source = "explorer" })[1]:is_focused() == false then
					Snacks.picker.get({ source = "explorer" })[1]:focus()
				end
			end,
			desc = "File Explorer",
		},
	},
}
