return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Make sure Vue / TS servers exist in opts.servers
      opts.servers = opts.servers or {}

      -- Patch vue_ls (Volar) LSP
      opts.servers.vue_ls = opts.servers.vue_ls or {}

      local orig_on_attach = opts.servers.vue_ls.on_attach
      opts.servers.vue_ls.on_attach = function(client, bufnr)
        -- Keep original on_attach behavior
        if orig_on_attach then
          orig_on_attach(client, bufnr)
        end

        -- Enable semantic tokens for vue_ls
        if client.server_capabilities.semanticTokensProvider then
          client.server_capabilities.semanticTokensProvider.full = true
        end

        -- Custom component highlight
        pcall(vim.api.nvim_set_hl, 0, "@lsp.type.component", { link = "@type" })
      end

      -- Patch TS servers (vtsls / ts_ls) to avoid conflicts in Vue files
      for _, name in ipairs({ "tsserver", "vtsls", "ts_ls" }) do
        opts.servers[name] = opts.servers[name] or {}
        local orig = opts.servers[name].on_attach
        opts.servers[name].on_attach = function(client, bufnr)
          if orig then
            orig(client, bufnr)
          end
          if client.server_capabilities.semanticTokensProvider then
            if vim.bo[bufnr].filetype == "vue" then
              client.server_capabilities.semanticTokensProvider.full = false
            else
              client.server_capabilities.semanticTokensProvider.full = true
            end
          end
        end
      end
    end,
  },
}
