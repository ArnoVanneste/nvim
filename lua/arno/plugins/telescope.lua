return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		"folke/todo-comments.nvim",
	},

	config = function()
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps -- 
		local keymap = vim.keymap
		local builtin = require("telescope.builtin")

		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
		keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
		keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
		keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = "[/] Find in current buffer" })
		keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffer" })
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "[F]ind [T]odos" })
	end,
}
