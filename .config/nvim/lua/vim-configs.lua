vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.shiftround = true

vim.opt.number = true
vim.opt.relativenumber = true


vim.keymap.set('n','<C-h>',':wincmd h<CR>',{})
vim.keymap.set('n','<C-j>',':wincmd j<CR>',{})
vim.keymap.set('n','<C-k>',':wincmd k<CR>',{})
vim.keymap.set('n','<C-l>',':wincmd l<CR>',{})
