local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "rust",
    "sql",
    "css",
    "html",
    "javascript",
    "typescript",
    "json",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",

    -- rust stuff
    "rust-analyzer",

    -- config file stuff
    "yaml-language-server",

    -- SQL
    "sqlls",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
