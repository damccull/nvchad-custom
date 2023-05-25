local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "rust-lang/rust.vim"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end,
  },
--[[
  {
    "mfussenegger/nvim-dap",
  },
]]
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require("plugins.configs.cmp")
      table.insert(M.sources, {name = "crates"})
      return M
    end,
  },
  {
    "esensar/nvim-dev-container",
    opts = {
      ensure_installed = {
        "nvim-treesitter/nvim-treesitter"
      },
    },
    lazy = false,
    config = function()
      require("devcontainer").setup{
          attach_mounts = {
            neovim_config = {
              enabled = true,
              options = { "readonly" }
            },
            neovim_data = {
              enabled = false,
              options = {}
            },
            neovim_state = {
              enabled = false,
              options = {}
            },
          },
        }
    end
  }
}
return plugins
