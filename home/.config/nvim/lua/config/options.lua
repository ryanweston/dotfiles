-- Options are automatically loaded before lazy.nvim startup.
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

require("config.remote_clipboard").setup()

-- Disable automatic line wrapping
vim.opt.wrap = false

-- Enable smart auto-indenting
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- Indent wrapped likes visually
vim.opt.breakindent = true

-- Enable relative line numbers:wrapping
vim.opt.nu = true
vim.opt.rnu = true

-- Enable ignorecase + smartcase for better search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable persistant undo history
vim.opt.undofile = true
