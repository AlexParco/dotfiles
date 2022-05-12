vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
    }
  }

  -- Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', 
    }
  }

  use 'editorconfig/editorconfig-vim'

  -- highlights 
  use 'nvim-treesitter/nvim-treesitter'

  -- speed loading Lua modules and files.
  use 'lewis6991/impatient.nvim'

  -- theme
  use 'nanotech/jellybeans.vim'
  use 'morhetz/gruvbox'
  use 'alexparco/nightfall.vim'
  use 'kaicataldo/material.vim'
  -- Go Tools
  use 'fatih/vim-go'

  -- center Text 
  use 'junegunn/goyo.vim'

  -- markdown preview
  use 'iamcco/markdown-preview.nvim'

  use 'neovimhaskell/haskell-vim'
end)
