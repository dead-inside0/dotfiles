return {
	"Wansmer/treesj",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	opts = {
		use_default_keymaps = false,
	},
	config = function()
		vim.keymap.set('n', "<leader>m", require('treesj').toggle, {})
	end
}
