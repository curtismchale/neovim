local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- file browser
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use 'nvim-lualine/lualine.nvim'
  use 'axelf4/vim-strip-trailing-whitespace'

  -- centers single buffers: https://github.com/smithbm2316/centerpad.nvim
  use { 'smithbm2316/centerpad.nvim' }

  use 'nvim-treesitter/nvim-treesitter'

  use 'hrsh7th/nvim-cmp'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {'nvim-orgmode/orgmode', config = function()
  require('orgmode').setup{}
end
}

-- obsidian nvim
use({
  "epwalsh/obsidian.nvim",
  tag = "*",  -- recommended, use latest release instead of latest commit
  requires = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/main",
        },
        {
          name = "work",
          path = "~/Documents/developers",
        },
      },

      -- see below for full list of options 👇
    })
  end,
})

    use { 'neoclide/coc.nvim', branch = 'release' }



  -- themes
use { "ellisonleao/gruvbox.nvim" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
