-- LSP plugin overrides
--
-- Patches on_attach behaviour that can't be expressed
-- through vim.lsp.config alone. Extend opts.servers
-- below to configure additional LSP servers.

-- Highlight custom Vue components (<MyComponent>) as type
-- names. This token is only emitted by vue_ls in .vue files
-- so it won't affect other languages.
vim.api.nvim_set_hl(0, "@lsp.type.component", { link = "@type" })

return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.vtsls = opts.servers.vtsls or {}

      -- Disable vtsls semantic tokens in Vue files so they
      -- don't clash with vue_ls. Without this, both servers
      -- provide overlapping highlights causing flicker.
      local orig_on_attach = opts.servers.vtsls.on_attach
      opts.servers.vtsls.on_attach = function(client, bufnr)
        if orig_on_attach then
          orig_on_attach(client, bufnr)
        end
        if client.server_capabilities.semanticTokensProvider then
          client.server_capabilities.semanticTokensProvider.full =
            vim.bo[bufnr].filetype ~= "vue"
        end
      end
    end,
  },
}
