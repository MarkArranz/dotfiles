return {
  -- statusline overrides
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      sections = {
        lualine_z = {
          {
            "encoding",
            fmt = string.upper,
            separator = " ",
            padding = { left = 1, right = 0 },
          },
          { "fileformat", padding = { left = 0, right = 1 } },
        },
      },
    },
  },
}
