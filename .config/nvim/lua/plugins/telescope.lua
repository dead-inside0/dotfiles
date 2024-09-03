return {
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		},
		config = function()
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension('harpoon')
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
}
