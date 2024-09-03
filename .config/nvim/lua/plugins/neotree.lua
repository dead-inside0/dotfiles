return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	opts = {
		source_selector = {
			winbar = true,
			statusline = true,
		},
		sources = {
			"filesystem",
		},
		window = {
			mappings = {
				["l"] = "open",
				["h"] = "close_node",
			},
		},
	},
}
