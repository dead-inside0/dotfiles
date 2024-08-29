--Neotree
vim.keymap.set("n", "<leader>ft", ":Neotree filesystem toggle left<CR>", {desc="Toggle the filesystem view"}) --(F)ile (T)tree
vim.keymap.set('n', '<leader>ds', ':Neotree document_symbols<CR>', {desc="Toggle the document token view"}) --(D)ocument (S)ymbols
--LSP/Code actions
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {desc="Format register using null-ls"}) --(L)SP (F)ormat
vim.keymap.set("n", "K", vim.lsp.buf.hover, {desc="Show help info about keyword"}) --Default help keybind
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {desc="Go to the definition"}) --(G)o to (D)efinition
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc="View available code actions"}) --(C)ode (A)ction
--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc="Find files with telescope"}) --(F)ind (F)iles
vim.keymap.set("n", "<leader>lg", builtin.live_grep, {desc="Live grep through the project"}) --(L)ive (G)rep
