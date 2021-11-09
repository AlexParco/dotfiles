
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer manage plugins
  use 'wbthomason/packer.nvim'

  -- Syntax and Visual Plugins
  use {'norcalli/nvim-colorizer.lua'}

  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {'lukas-reineke/indent-blankline.nvim'}

  -- Themes
  use {'projekt0n/github-nvim-theme'}

  -- Lsp and Autocomplete

  use {'neovim/nvim-lspconfig'}
  use {'onsails/lspkind-nvim'}

  use {'hrsh7th/nvim-cmp' }
  use {'hrsh7th/cmp-nvim-lsp'}

  use {'hrsh7th/cmp-buffer' }
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}

  use {'windwp/nvim-autopairs'}


  -- Tree-Sitter
  use {
      'nvim-treesitter/nvim-treesitter',
       run = ':TSUpdate',
  }
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-ts-autotag'}

  -- Navigation
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  -- Terminus Integration
  use {'akinsho/toggleterm.nvim'}

  -- Other
  use {'lukas-reineke/format.nvim'}

end)

