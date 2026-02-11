return {
  -- Load all theme plugins but don't apply them
  -- This ensures all colorschemes are available for hot-reloading
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
  },
}
