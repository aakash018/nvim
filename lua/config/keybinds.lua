local keymap = vim.keymap
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")



-- Select all
keymap.set("n", "SA", "ggVGom", {desc= "Select All"})

keymap.set("n", "<leader>w", ":w<CR>")

keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Ctrl U adnd d has zz
keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- J and K
keymap.set("n", "j", "gj", { noremap = true, silent = true })
keymap.set("n", "k", "gk", { noremap = true, silent = true })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})


keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
keymap.set('n', '<leader>k', vim.diagnostic.open_float, { desc = 'Open Floating Diagnostic' })



vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })

keymap.set("n", "<leader>X", ":bd!<CR>", {noremap=true, silent=true})


-- tmux sessionsier
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy", -- or "LazyDone" if you use LazyVim
  callback = function()
    vim.keymap.set("n", "<C-f>", function()
      vim.cmd("terminal bash /Users/aakashkhanal/.config/fish/tmux-sessionizer.bash")
    end, { desc = "Run tmux sessionizer", noremap = true, silent = true })
  end,
})
