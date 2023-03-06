vim.o.number=true

-- use the system clipboard
vim.opt.clipboard="unnamedplus"

-- autoload changed files
vim.opt.autoread=true

-- tabs & indenting
vim.opt.autoindent=true
vim.opt.smarttab=true
vim.opt.tabstop=4                                                   -- a tab is four spaces
vim.opt.shiftwidth=4                                                -- an autoindent is four spaces
vim.opt.list=true                                                   -- show invisibles
--vim.opt.nowrap=true                                                 -- don't wrap lines
vim.opt.backspace="indent,eol,start"                                -- backspace through everything in insert mode
