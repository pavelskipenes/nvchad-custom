-- https://nvchad.com/docs/config/plugins
local plugins = {
  {
    "folke/neodev.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      return require "custom.configs.mason"
    end,
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    -- ft = "rust",
    lazy = false,
    dependencies = {
      "neovim/nvim-lspconfig",
      dependencies = {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
      end,
    },
    config = function()
      require("lsp_lines").setup()
      vim.diagnostic.config {
        virtual_lines = true,
        virtual_text = false,
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.treesitter",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      auto_close = true,
    },
  },
  "arnamak/stay-centered.nvim",
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
}
return plugins
