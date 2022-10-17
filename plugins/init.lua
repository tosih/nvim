return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    ensure_installed = {
      "lua",
      "go",
      "javascript",
    },
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
      filters = {
        custom = { "bazel*", ".git", ".idea" },
      },
      git = {
        enable = true,
        ignore = false,
      },
    },
  },

  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "gofumpt",
        "goimports",
        "golangci-lint",
        "golines",
        "gopls",
        "grammarly-languageserver",
        "lua-language-server",
        "markdownlint",
        "marksman",
        "shfmt",
        "staticcheck",
        "stylua",
      },
    },
  },

  ["iamcco/markdown-preview.nvim"] = {
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  ["ray-x/go.nvim"] = {
    config = function()
      require("go").setup()
    end,
  },

  ["Maan2003/lsp_lines.nvim"] = {
    config = function()
      require("lsp_lines").setup()
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
}
