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
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use "Shatur/neovim-ayu"
    use "norcalli/nvim-colorizer.lua"

    -- Lsp and Autocomplete
    use {
        "neovim/nvim-lspconfig",
        opt = true,
        setup = function()
        packer_lazy_load "nvim-lspconfig"
            -- reload the current file so lsp actually starts for it
            vim.defer_fn(function()
                    vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
            end, 0)
        end,
        config = "require('plugins.configs.lspconfig')"
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
        "windwp/nvim-autopairs"
    }

end)

