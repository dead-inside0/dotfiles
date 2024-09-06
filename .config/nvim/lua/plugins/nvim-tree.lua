return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		vim.opt.termguicolors = true

		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
				side = "right",
			},
			renderer = {
				group_empty = true,
				highlight_git = true,
				icons = {
					show = {
						git = true,
					},
				},
			},
			filters = {
				dotfiles = false,
			},
			git = {
				enable = true,
			},
		})
	end,
}
