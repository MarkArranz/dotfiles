--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format_notify = true,
      servers = {
        gopls = {
          settings = {
            gopls = {
              templateExtensions = {
                "gohtml",
                "gotmpl",
                "tmpl",
              },
            },
          },
        },
        neocmake = {
          capabilities = capabilities,
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["conf"] = { "shfmt" },
        ["markdown"] = { "prettier" },
      },
    },
  },
}
