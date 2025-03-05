return {
  "knubie/vim-kitty-navigator",
  build = "cp ./*.py ~/.config/kitty/",
  keys = {
    { "<C-h>", "<cmd>KittyNavigateLeft<cr>", desc = "KittyNavigateLeft", noremap = true, silent = true },
    { "<C-j>", "<cmd>KittyNavigateDown<cr>", desc = "KittyNavigateDown", noremap = true, silent = true },
    { "<C-k>", "<cmd>KittyNavigateUp<cr>", desc = "KittyNavigateUp", noremap = true, silent = true },
    { "<C-l>", "<cmd>KittyNavigateRight<cr>", desc = "KittyNavigateRight", noremap = true, silent = true },
  },
}
