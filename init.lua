require("config.options")
require("config.keybinds")
require("config.lazy")

require("lazy").setup({
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
})

-- theme
vim.cmd.colorscheme("catppuccin")
