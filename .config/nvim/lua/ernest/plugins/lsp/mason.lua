return {
	"williamboman/mason.nvim",
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
	config = function()
		require("mason").setup()
		vim.keymap.set("n", "<leader>M", "<cmd>Mason<CR>", { noremap = true, silent = true, nowait = true })
	end,
}
