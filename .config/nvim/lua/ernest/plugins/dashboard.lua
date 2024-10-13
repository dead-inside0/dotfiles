return {
	"goolord/alpha-nvim",
	dependencies = {
		{
			'nvim-tree/nvim-web-devicons',
		},
		{
			"MaximilianLloyd/ascii.nvim",
			dependencies = {
				"MunifTanjim/nui.nvim"
			}
		},
		{
			"nvim-telescope/telescope.nvim",
		} },
	config = function()
		local dashboard = require('alpha.themes.dashboard')
		local ascii = require('ascii')
		require('telescope').load_extension("ascii")
		dashboard.section.header.val = ascii.get_random("text", "neovim")
		require 'alpha'.setup(dashboard.config)
	end,
}
