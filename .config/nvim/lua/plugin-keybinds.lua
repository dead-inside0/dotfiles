--LSP/Code actions
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format register using null-ls" }) --(L)SP (F)ormat
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show help info about keyword" }) --Default help keybind
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to the definition" }) --(G)o to (D)efinition
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "View available code actions" }) --(C)ode (A)ction
--Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files with telescope" }) --(F)ind (F)iles
vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "Live grep through the project" }) --(L)ive (G)rep
--TreeSJ(Collapse)
vim.keymap.set("n", "<leader>c", function()
	require("treesj").toggle({ split = { recursive = true } })
end, { desc = "Collapse current node" }) --(C)ollapse
--Neogen(Autocomments)
vim.keymap.set("n", "<leader>a", require("neogen").generate, {})
--Harpoon
vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, {})
vim.keymap.set("n", "<leader>hr", require("harpoon.mark").rm_file, {})
vim.keymap.set("n", "<leader>hm", ":Telescope harpoon marks<CR>", {})
--Nvim-tree
vim.keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>", {})
