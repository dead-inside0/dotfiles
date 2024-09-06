--Lazy
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Show Lazy" })
--Mason
vim.keymap.set("n", "<leader>M", "<cmd>Mason<CR>", { desc = "Show Mason" })
--Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files with telescope" }) --(F)ind (F)iles
vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "Live grep through the project" }) --(L)ive (G)rep
--TreeSJ(Collapse)
vim.keymap.set("n", "<leader>c", function()
    require("treesj").toggle({ split = { recursive = true } })
end, { desc = "Collapse current node" }) --(C)ollapse
--Neogen(Autocomments)
vim.keymap.set("n", "<leader>a", require("neogen").generate, { desc = "Add Neogen annotation" })
--Harpoon
vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "Mark file using Harpoon" })
vim.keymap.set("n", "<leader>hr", require("harpoon.mark").rm_file, { desc = "Remove file using Harpoon" })
vim.keymap.set("n", "<leader>hm", "<cmd>Telescope harpoon marks<CR>", { desc = "Show Harpoon Menu" })
--Nvim-tree
local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>ft", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Nvim-Tree" })
--Conform
vim.keymap.set({ "n", "v" }, "<leader>lf", function()
    require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
    })
end)
