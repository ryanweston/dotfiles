-- LSP plugin overrides
--
-- Patches on_attach behaviour that can't be expressed
-- through vim.lsp.config alone. Extend opts.servers
-- below to configure additional LSP servers.

return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre" },
    cmd = { "LspInfo", "LspInstall", "LspUninstall", "Mason" },
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "vtsls",
          "vue_ls",
          "eslint",
          "lua_ls",
          "eslint_d",
        },
        automatic_enable = true,
        automatic_installation = true,
      })

      -- Highlight custom Vue components (<MyComponent>) as type
      -- names. This token is only emitted by vue_ls in .vue files
      -- so it won't affect other languages.
      vim.api.nvim_set_hl(0, "@lsp.type.component", { link = "@type" })

      local vue_language_server_path = vim.fn.expand("$MASON/packages")
        .. "/vue-language-server"
        .. "/node_modules/@vue/language-server"

      local vue_plugin = {
        name = "@vue/typescript_plugin",
        location = vue_language_server_path,
        languages = { "vue" },
        configNamespace = "typescript",
      }

      local vtsls_config = {
        settings = {
          vtsls = {
            tsserver = {
              globalPlugins = {
                vue_plugin,
              },
            },
          },
        },
      }
      local vue_ls_config = {
        init_options = {
          typescript = {},
        },
        on_attach = function(client)
          client.server_capabilities.semanticTokensProvider.full = true
        end,
      }

      vim.lsp.config("vtsls", vtsls_config)
      vim.lsp.config("vue_ls", vue_ls_config)
    end,
  },
}
