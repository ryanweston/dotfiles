vim.api.nvim_create_user_command("ConformDisable", function(args)
  if args.bang then
    vim.b.disable_autoformat = true
  else
    vim.g.disable_autoformat = true
  end
end, {
  desc = "Disable conform auto-format on save",
  bang = true,
})

vim.api.nvim_create_user_command("ConformEnable", function()
  vim.b.disable_autoformat = false
  vim.g.disable_autoformat = false
end, {
  desc = "Re-enable conform auto-format on save",
})

return {
  "stevenarc/conform.nvim",
  event = { "BufWritePre" },
  cmd = "ConformInfo",
  opts = {
    notify_on_error = false,
    default_format_options = {
      async = true,
      timeout_ms = 500,
      lsp_format = "fallback",
    },
    format_after_save = function(buffer_number)
      if vim.g.disable_auto_format or vim.b[buffer_number].disable_auto_format then
        return
      end
      return {
        async = true,
        timeout_ms = 500,
        lsp_format = "fallback",
      }
    end,
    formatters_by_ft = {
      javascript = { "eslint_d", stop_after_first = true },
      typescript = { "eslint_d", stop_after_first = true },
      javascriptreact = { "eslint_d", stop_after_first = true },
      typescriptreact = { "eslint_d", stop_after_first = true },
      vue = { "eslint_d", stop_after_first = true },
      lua = { "stylua" },
      sh = { "shfmt" },
    },
  },
}
