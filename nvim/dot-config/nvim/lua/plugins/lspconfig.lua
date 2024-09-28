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
