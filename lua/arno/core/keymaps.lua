-- set leader key to space --
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- HACK: makes sure trailing whitespaces do not get removed in MarCon --
vim.g.editorconfig = false

local keymap = vim.keymap

-- clear search highlights --
keymap.set("n", "Esc", "<cmd>nohlsearch<CR>")

-- window management --
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "[W]indow split [V]ertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "[W]indow split [H]orizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "[W]indow split [E]qual size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "[W]indow close current" })
-- moving between windows --
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- quit vim --
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "[Q]uit all" })
