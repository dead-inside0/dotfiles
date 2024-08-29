return {
	"MeanderingProgrammer/dashboard.nvim",
	event = "VimEnter",
	dependencies = {
		{ "MaximilianLloyd/ascii.nvim", dependencies = { "MunifTanjim/nui.nvim" } },
	},
	opts = {
		header = require("ascii").art.animals.cats.pawpaw,
		date_format = '%Y-%m-%d %H:%M:%S',
		directories = {
			"~/.config",
			"~",
		},
	},
}
