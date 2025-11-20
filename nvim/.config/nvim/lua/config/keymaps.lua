-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- In your keybinding setup (like which-key configuration)
vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover({ border = "single", max_height = 25, max_width = 120 })
end, { desc = "Hover documentation" })
