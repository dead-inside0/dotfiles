return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		diagnostics = "nvim_lsp",
	},
	config = function()
		vim.opt.termguicolors = true
	end,
}
