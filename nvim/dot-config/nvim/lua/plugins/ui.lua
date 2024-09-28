return {
  -- nvim-notify overrides
  {
    "rcarriga/nvim-notify",
    opts = {
      top_down = false,
    },
  },

  -- statusline overrides
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
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
