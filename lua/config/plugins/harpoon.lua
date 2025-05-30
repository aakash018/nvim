return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, {desc= "Add current buffer to Harpoon"})
		vim.keymap.set("n", "<leader>e", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, {desc= "Harpoon File List"})

		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end, {desc= "Harpoon select list 1"})
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end, {desc= "Harpoon select list 2"})
		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end, {desc= "Harpoon select list 3"})
		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end, {desc= "Harpoon select list 4"})

		vim.keymap.set("n", "<leader>5", function()
			harpoon:list():select(5)
		end, {desc= "Harpoon select list 5"})

		vim.keymap.set("n", "<leader>6", function()
			harpoon:list():select(6)
		end, {desc= "Harpoon select list 6"})
		vim.keymap.set("n", "<leader>7", function()
			harpoon:list():select(7)
		end, {desc= "Harpoon select list 7"})
		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end)
	end,
}
