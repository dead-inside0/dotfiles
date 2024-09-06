vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.shiftround = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", {})
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", {})
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", {})
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", {})

vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", {})
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", {})
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", {})
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", {})

vim.keymap.set("n", "<leader>ww", ":w<CR>", {})
vim.keymap.set("n", "<leader>wq", ":wqa<CR>", {})
vim.keymap.set("n", "<leader>qq", ":qa<CR>", {})

vim.keymap.set("n", "<leader>H", "<C-]>")
