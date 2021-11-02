return require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      'hrsh7th/cmp-cmdline'
    }
  }

  use "projekt0n/github-nvim-theme"

  use { 'fatih/vim-go',  run =':GoUpdateBinaries' }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires ='nvim-lua/plenary.nvim'
  }

  use {'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  use {'nvim-telescope/telescope-fzy-native.nvim'}

  use'glepnir/dashboard-nvim'
end)
