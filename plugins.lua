local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    -- lsp configurator
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format and linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    -- Mason plugin downloader
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    -- RUST TOOLS (includes lsp)
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, { name = "crates" })
      return M
    end,
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  -- {
  --   "folke/trouble.nvim",
  --   cmd = "Trouble",
  --   config = function()
  --       require("trouble").setup()
  --   end,
  -- },
  -- {
  --   "esensar/nvim-dev-container",
  --   opts = {
  --     ensure_installed = {
  --       "nvim-treesitter/nvim-treesitter"
  --     },
  --   },
  --   lazy = false,
  --   config = function()
  --     require("devcontainer").setup{
  --         attach_mounts = {
  --           neovim_config = {
  --             enabled = true,
  --             options = { "readonly" }
  --           },
  --           neovim_data = {
  --             enabled = false,
  --             options = {}
  --           },
  --           neovim_state = {
  --             enabled = false,
  --             options = {}
  --           },
  --         },
  --       }
  --   end
  -- },
}

return plugins
