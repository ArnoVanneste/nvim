vim.cmd("let g:netrw_liststyle = 3")

-- HACK: makes sure trailing whitespaces do not get removed in MarCon --
vim.g.editorconfig = false

-- used to enable icons in telescope --
vim.g.have_nerd_font = true

local opt = vim.opt

-- line numbers -- 
opt.number = true
opt.relativenumber = true

-- tabs & indentation --
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.breakindent = true

-- enable mouse mode (can be usefull for resizing splits) --
opt.mouse = "a"

-- don't show mode since its already in statusline -- 
opt.showmode = false

-- use system clipboard as default register --
opt.clipboard = "unnamedplus"

-- save undo history --
opt.undofile = true

-- case-insensitive searching UNLESS \C or capital in search --
opt.ignorecase = true
opt.smartcase = true

-- keep signcolumn on by default --
opt.signcolumn = "yes"

-- configure how new splits should be opened --
opt.splitright = true
opt.splitbelow = true

-- preview substitutions as you type --
opt.inccommand = "split"

-- highlight the current cursor line --
opt.cursorline = true

-- set highlight on search -- 
opt.hlsearch = true

-- highlight when yanking text --
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
