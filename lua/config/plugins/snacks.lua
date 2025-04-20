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
      "gd",
      function ()
        Snacks.jump("definition")
      end
    },

  { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
	}
}
