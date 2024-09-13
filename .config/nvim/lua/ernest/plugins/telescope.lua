return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		defaults = {
			theme = "dropdown",
		},
	},
	config = function()
		local builtin = require("telescope.builtin")
		local opts = { noremap = true, silent = true, nowait = true }
		vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)
		vim.keymap.set("n", "<leader>lg", builtin.live_grep, opts)
		vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)
	end,
}
