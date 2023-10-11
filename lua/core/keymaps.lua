vim.g.mapleader = ','
vim.g.maplocalleader = ','

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- clear search with <leader>h
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>' )

vim.api.nvim_set_keymap('n', '<leader>z', "<cmd>lua require'centerpad'.toggle{ leftpad = 60, rightpad = 60 }<cr>", { silent = true, noremap = true })
