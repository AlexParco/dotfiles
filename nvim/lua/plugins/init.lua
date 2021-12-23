vim.cmd [[packadd packer.nvim]]
function packer_lazy_load (plugin, timer)
   if plugin then
      timer = timer or 0
      vim.defer_fn(function()
         require("packer").loader(plugin)
      end, timer)
   end
end

return require('packer').startup(function()
    use "wbthomason/packer.nvim"

    -- coc for discord presence
    use {'neoclide/coc.nvim', branch = 'release'}

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        event = "BufRead",
        config = "require('plugins.configs.treesitter')",
    }

    -- themes
    use {"Shatur/neovim-ayu"}
    use {"projekt0n/github-nvim-theme"}
    use {'chriskempson/base16-vim'}
    use {'ackyshake/Spacegray.vim'}

    use {
        "kyazdani42/nvim-web-devicons",
    }

    use {
        "norcalli/nvim-colorizer.lua",
        config = function() require('plugins.configs.colorizer') end,
    }

    -- Lsp and Autocomplete
    use {
        "neovim/nvim-lspconfig",
        opt = true,
        setup = function()
        packer_lazy_load "nvim-lspconfig"
            vim.defer_fn(function()
                    vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
            end, 0)
        end,
        config = "require('plugins.configs.lspconfig')"
    }

    use {
        'williamboman/nvim-lsp-installer',
        config = "require('plugins.configs.lspinstall')"
    }

    use {
          "rafamadriz/friendly-snippets",
          after = "friendly-snippets",
          event = "InsertEnter",
    }

    use {
        "hrsh7th/nvim-cmp",
        config = "require('plugins.configs.cmp')",
    }

    use {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        after = "nvim-cmp",
    }

    use {
        "saadparwaiz1/cmp_luasnip",
        after = "LuaSnip",
    }

    use {
        "hrsh7th/cmp-nvim-lua",
        after = "cmp_luasnip",
    }

    use {
        "hrsh7th/cmp-nvim-lsp",
        after = "cmp-nvim-lua",
    }

    use {
        "hrsh7th/cmp-buffer",
        after = "cmp-nvim-lsp",
    }

    use {
        "hrsh7th/cmp-path",
        after = "cmp-buffer",
    }

    use {
        "windwp/nvim-autopairs",
        after = "nvim-cmp",
        config = "require('plugins.configs.pairs')",
    }

    use {
        "kyazdani42/nvim-tree.lua",
        cmd = {"NvimTreeToggle"},
        config = "require('plugins.configs.nvimtree')",
        setup = function()
            local map = vim.api.nvim_set_keymap 
            map('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
        end
    }

    use {
        "numToStr/Comment.nvim",
        module = "Comment",
        config = function() require('Comment').setup() end,
        setup = function()
            local map = vim.api.nvim_set_keymap 
            if "Comment.nvim" then
                vim.defer_fn(function()
                    require("packer").loader("Comment.nvim")
                end, 0)
            end
            map("n", "<leader>2", ":lua require('Comment.api').toggle_current_linewise()<CR>", {noremap = true, silent = true})
            map("v", "<leader>2", ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", {noremap = true, silent = true})
        end,
    }

    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
      config = "require('plugins.configs.statusline')" 
    }
    
    use {
        "akinsho/bufferline.nvim",
        after = "nvim-web-devicons",
        config = function()
            require("bufferline").setup{}
        end,
        setup = function()
            local map = vim.api.nvim_set_keymap 
            map("n", "<TAB>", ":BufferLineCycleNext <CR>", {noremap = true, silent = true})
            map("n", "<S-Tab>", ":BufferLineCyclePrev <CR>", {noremap = true, silent = true})
        end,
    }
    
    use {
        "lewis6991/gitsigns.nvim",
        config = "require('plugins.configs.gitsigns')",
        requires = {
            'nvim-lua/plenary.nvim'
        },
    }

    use {
        "akinsho/toggleterm.nvim",
        config = "require('plugins.configs.toggleterm')"
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        config = "require('plugins.configs.indent')",
    }

end)
