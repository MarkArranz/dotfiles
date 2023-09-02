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
}
