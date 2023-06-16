require "custom.helpers.get_home_folder"
--todo: add option (based on operating system) to set shell preference

vim.opt.colorcolumn = "80"
vim.opt.linebreak = true

-- Line numbers, and make them relative
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Disallow backups but enable long-lived undo file
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = get_home_folder()
vim.opt.undofile = true

vim.opt.hlsearch = false -- disable search highlighting
vim.opt.incsearch = true -- enable incremental search

vim.opt.termguicolors = true

-- Ensure scolling has an offset of 8 lines
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append "@-@"

-- Update time fast?
vim.opt.updatetime = 50
