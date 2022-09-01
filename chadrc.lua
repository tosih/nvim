local M = {}

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "catppuccin_latte" },
}

M.plugins = {
   override = {
      ["nvim-treesitter/nvim-treesitter"] = {
        ensure_installed = {
          "lua",
          "go",
       },
     },
   },

  user = {
    ["iamcco/markdown-preview.nvim"] = {
      run = function()
        vim.fn["mkdp#util#install"]()
      end,
    },

    ["ray-x/go.nvim"] = {
      config = function()
        require('go').setup()
      end,
    },

    ["Maan2003/lsp_lines.nvim"] = {
      config = function()
        require("lsp_lines").setup()
      end,
    },

    ["neovim/nvim-lspconfig"] = {
        config = function()
          require "plugins.configs.lspconfig"
          require "custom.plugins.lspconfig"
        end,
    },

    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
    },

    ["goolord/alpha-nvim"] = {
      disable = false,
    },

    ["max397574/better-escape.nvim"] = {
      event = "InsertEnter",
      config = function()
        require("better_escape").setup()
      end,
    },
  },
}

M.mappings = require "custom.mappings"

return M
