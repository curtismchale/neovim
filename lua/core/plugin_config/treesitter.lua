require'nvim-treesitter.configs'.setup{
 -- a list of parser names
 ensure_installed = { "lua", "php", "vim", "html", "javascript", "markdown", "markdown_inline" },

 -- install parsers
 sync_install = false,
 auto_install = false,
 highlight = {
   enable = true,
 },
}
